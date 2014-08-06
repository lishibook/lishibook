package com.lishibook.resource;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.ws.rs.CookieParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.lishibook.dao.ResourceDao;
import com.lishibook.dao.ResourceFocusDao;
import com.lishibook.dao.ResourceFocusGroupDao;
import com.lishibook.entity.Resource;
import com.lishibook.entity.ResourceFocus;
import com.lishibook.entity.ResourceFocusgroup;
import com.lishibook.exception.LBException;
import com.lishibook.inbean.FocusGroupInBean;
import com.lishibook.inbean.ResourceInBean;
import com.lishibook.outbean.BaseBean;
import com.lishibook.outbean.FocusGroupListBean;
import com.lishibook.outbean.FocusListBean;
import com.lishibook.outbean.FocusResourceBean;
import com.lishibook.outbean.ResourceAddBean;
import com.lishibook.outbean.ResourceInfoBean;

@Produces(MediaType.APPLICATION_JSON)
@Path("/resource")
public class ResourceService {
	
	private static Logger logger = LoggerFactory.getLogger(ResourceService.class);
	
	@Inject
	private ResourceDao resourceDao;
	
	@Inject
	private ResourceFocusDao resourceFocusDao;
	
	@Inject
	private ResourceFocusGroupDao resourceFocusGroupDao;
	
	@GET
	@Path("/show/{resourceId}")
	public ResourceInfoBean get(@PathParam("resourceId") int resourceId){

		Resource resource = resourceDao.get(resourceId);
		
		ResourceInfoBean resourceInfoBean = new ResourceInfoBean();
		if(resource != null){
			resourceInfoBean.setStatus(1);
		} else {
			resourceInfoBean.setStatus(-1);
		}
		
		resourceInfoBean.setInfo(resource);
		
		return resourceInfoBean;
	}
	
	@POST
	@Path("/add")
	public BaseBean add(@CookieParam("userid") int userid, ResourceInBean resource){
		
		Subject currentUser = SecurityUtils.getSubject();
		
		if (!currentUser.hasRole("admin")) {
			throw new LBException("no permission");
		}
		
		Resource entity = new Resource();
		entity.setName(resource.getName());
		Date date = new Date();
		entity.setCreatetime(date);
		entity.setLastedittime(date);
		entity.setIconurl(resource.getIconurl());
		entity.setDescription(resource.getDescription());
		entity.setContent(resource.getContent());
		entity.setCreatorid(userid);
		entity.setLasteditid(userid);
		entity.setViews(0);
		resourceDao.save(entity);
		logger.info("资源 " + entity.getId()  + ":" + entity.getName() + " 添加成功");
		
		ResourceAddBean result = new ResourceAddBean(1, "资源添加成功", entity.getId());
		return result;
	}
	
	@POST
	@Path("/edit/{resourceId}")
	public BaseBean edit(@PathParam("resourceId") int resourceId, @CookieParam("userid") int userid, ResourceInBean resource){
		
		Subject currentUser = SecurityUtils.getSubject();
		
		if (!currentUser.hasRole("admin")) {
			throw new LBException("no permission");
		}
		
		Resource entity = new Resource();
		entity.setId(resourceId);
		entity.setName(resource.getName());
		Date date = new Date();
		entity.setCreatetime(date);
		entity.setLastedittime(date);
		entity.setIconurl(resource.getIconurl());
		entity.setDescription(resource.getDescription());
		entity.setContent(resource.getContent());
		entity.setCreatorid(userid);
		entity.setLasteditid(userid);
		entity.setViews(0);
		resourceDao.update(entity);
		logger.info("资源" + entity.getId()  + ":" + entity.getName() + " 编辑成功.");
		
		ResourceAddBean result = new ResourceAddBean(1, "资源添加成功", entity.getId());
		return result;
	}
	
	@GET
	@Path("/edit/{resourceId}")
	public BaseBean delete(@PathParam("resourceId") int resourceId, @CookieParam("userid") int userid){
		
		Subject currentUser = SecurityUtils.getSubject();
		
		if (!currentUser.hasRole("admin")) {
			throw new LBException("no permission");
		}
		
		Resource entity = new Resource();
		entity.setId(resourceId);
		resourceDao.delete(entity);
		logger.info("资源" + entity.getId() + ":" + entity.getName() + " 删除成功.");
		
		ResourceAddBean result = new ResourceAddBean(1, "资源添加成功", entity.getId());
		return result;
	}
	
	@GET
	@Path("/getfocuses/{resourceId}")
	public BaseBean getFocuses(@PathParam("resourceId") int resourceId){
		
		List<ResourceFocus> list = resourceFocusDao.getFocuses(resourceId);
		List<FocusResourceBean> infoList = new ArrayList<FocusResourceBean>();
		
		for(ResourceFocus focus: list){
			FocusResourceBean bean = new FocusResourceBean();
			bean.setId(focus.getId());
			bean.setFromResourceId(resourceId);
			bean.setFocusResourceId(focus.getTorid());
			bean.setFocusDescription(focus.getDescription());
			bean.setFocusGroup(focus.getGroupid());
			
			Resource resource = resourceDao.get(focus.getTorid());
			bean.setFocusResourceName(resource.getName());
			bean.setIconUrl(resource.getIconurl());
			bean.setResourceDesc(resource.getDescription());
			bean.setViews(resource.getViews());
			
			infoList.add(bean);
		}
		
		FocusListBean result = new FocusListBean(1, "succeed");
		result.setFocuses(infoList);
		
		return result;
	}
	
	/**
	 * 获取某个资源的某个关注组内的所有关注资源
	 * @param resourceId
	 * @param groupId
	 * @return
	 */
	@GET
	@Path("/getgroupfocuses/{resourceId}/{groupId}")
	public BaseBean getGroupFocuses(@PathParam("resourceId") int resourceId, @PathParam("groupId") int groupId){
		List<ResourceFocus> list = resourceFocusDao.getByGroupId(groupId);
		List<FocusResourceBean> infoList = new ArrayList<FocusResourceBean>();
		for(ResourceFocus focus: list){
			FocusResourceBean bean = new FocusResourceBean();
			bean.setFromResourceId(resourceId);
			bean.setFocusResourceId(focus.getTorid());
			bean.setFocusDescription(focus.getDescription());
			bean.setFocusGroup(focus.getGroupid());
			
			Resource resource = resourceDao.get(focus.getTorid());
			bean.setFocusResourceName(resource.getName());
			bean.setIconUrl(resource.getIconurl());
			bean.setResourceDesc(resource.getDescription());
			bean.setViews(resource.getViews());
			
			infoList.add(bean);
		}
		
		FocusListBean result = new FocusListBean(1, "succeed");
		result.setFocuses(infoList);
		
		return result;
	}
	
	/**
	 * 将某个 focus 移动到某个组
	 * @param focusId
	 * @param groupId
	 * @return
	 */
	@GET
	@Path("/movetogroup/{focusId}/{groupId}")
	public BaseBean moveToGroup(@PathParam("focusId") int focusId, @PathParam("groupId") int groupId){
		Subject currentUser = SecurityUtils.getSubject();
		
		if (!currentUser.hasRole("admin")) {
			throw new LBException("no permission");
		}
		
		ResourceFocus focus = resourceFocusDao.get(focusId);
		if(focus == null){
			throw new LBException("关注不存在");
		}
		ResourceFocusgroup group = resourceFocusGroupDao.get(groupId);
		if(group == null && groupId != 0){
			throw new LBException("相应组不存在");
		}
		focus.setGroupid(groupId);
		resourceFocusDao.update(focus);
		BaseBean result = new BaseBean(1, "移动成功");
		return result;
	}
	
	@GET
	@Path("/getgroups/{resourceId}")
	public BaseBean getGroups(@PathParam("resourceId") int resourceId){
		FocusGroupListBean result = new FocusGroupListBean();
		
		List<ResourceFocusgroup> groupList = resourceFocusGroupDao.getGroups(resourceId);
		result.setGroups(groupList);
		return result;
	}
	
	@POST
	@Path("/addgroup")
	public BaseBean addGroup(FocusGroupInBean focusGroup){
		Subject currentUser = SecurityUtils.getSubject();
		
		if (!currentUser.hasRole("admin")) {
			throw new LBException("no permission");
		}
		
		ResourceFocusgroup resourceFocusGroup = new ResourceFocusgroup();
		resourceFocusGroup.setRid(focusGroup.getRid());
		resourceFocusGroup.setName(focusGroup.getGroupName());
		resourceFocusGroup.setTime(new Date());
		
		resourceFocusGroupDao.save(resourceFocusGroup);
		BaseBean result = new BaseBean(1, "添加成功");
		return result;
	}
	
	@GET
	@Path("/delgroup/{groupId}")
	public BaseBean delGroup(@PathParam("groupId") int groupId){
		List<ResourceFocus> focuses = resourceFocusDao.getByGroupId(groupId);
		BaseBean result;
		if(focuses == null || focuses.isEmpty()){
			result = new BaseBean(-1, "组不为空！");
			return result;
		}
		
		ResourceFocusgroup group = resourceFocusGroupDao.get(groupId);
		if(group != null){
			resourceFocusGroupDao.delete(group);
		}
		result = new BaseBean(1, "删除成功");
		return result;
	}
}