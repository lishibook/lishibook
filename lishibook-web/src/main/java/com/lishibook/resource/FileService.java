package com.lishibook.resource;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.lishibook.exception.LBException;
import com.lishibook.jsonbean.SuccessOutput;
import com.lishibook.jsonbean.UploadResult;
import com.lishibook.jsonbean.UploadSuccessResult;

@Produces(MediaType.APPLICATION_JSON)
@Path("/file")
public class FileService {
	
	private final static String IMG_DIR = "/usr/share/nginx/html/img/";
	
	private static Logger logger = LoggerFactory.getLogger(FileService.class);
	
	@POST
	@Path("/upload")
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	public UploadResult upload(
			@FormDataParam("file") InputStream uploadedInputStream,
			@FormDataParam("file") FormDataContentDisposition fileDetail) {
		
		logger.info("Enter FileService.upload");
		
		Subject currentUser = SecurityUtils.getSubject();
		
		if (!currentUser.hasRole("admin")) {
			throw new LBException("no permission");
		}
		
		UploadSuccessResult result = new UploadSuccessResult();
		
		List<SuccessOutput> list = new ArrayList<SuccessOutput>();
		SuccessOutput output = new SuccessOutput();

		String dirName = getDirName();
		String path = IMG_DIR + dirName;
		File pathFile = new File(path);
		if(!pathFile.exists() || !pathFile.isDirectory()){
			pathFile.mkdirs();
		}
		
		String fileName = getPath(fileDetail.getFileName());
		
		File f = new File(path + File.separator + fileName);
		
		//已经存在同名文件
		while(f.exists()){
			fileName = getPath(fileDetail.getFileName());
			f = new File(path + File.separator + fileName);
		}
		
		FileOutputStream outputStream;
		try {
			outputStream = new FileOutputStream(f);
			int length = 0;
			byte[] buff = new byte[1024];
			
			try {
				while((length = uploadedInputStream.read(buff)) != -1){
					outputStream.write(buff, 0, length);
				}
			} catch (IOException e) {
				logger.info(e.toString());
			} finally {
				uploadedInputStream.close();
				outputStream.close();
			}
			
		} catch (FileNotFoundException e) {
			logger.info(e.toString());
		} catch (IOException e) {
			logger.info(e.toString());
		}
		
		logger.info("上传成功！");
		output.setName(fileDetail.getFileName());
		output.setSize(fileDetail.getSize());
		
		String url = "/img/" + dirName + "/" + fileName;
		
		output.setUrl(url);
		
		list.add(output);
		result.setFiles(list);
		
		logger.debug("Exit FileService.upload");
		return result;
	}
	
	//生成一个文件名
	private String getPath(String originalName){
		//文件名的第一部分：时间戳
		long part1 = new Date().getTime();
		
		//第二部分：随机数
		Random r = new Random();
		int part2 = r.nextInt(100000);
		
		String[] temp = originalName.split("\\.");
		String suffix = temp[temp.length-1];
		
		return part1 + "" + part2 + "" + "." + suffix;
	}
	
	//生成一个日期字符串，用作目录名字
	private String getDirName(){
		Calendar calendar = Calendar.getInstance();
		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH) + 1;
		int day = calendar.get(Calendar.DAY_OF_MONTH);
		
		return String.format("%04d%02d%02d", year, month, day);
	}
	
}
