package com.lishibook.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncryptUtils {
	
	private static String LISHIBOOK_SALT = "~lb$_salt321";
	
	public static String md5(String s) throws NoSuchAlgorithmException{
		MessageDigest md = MessageDigest.getInstance("MD5");  
        byte[] b = md.digest(s.getBytes());  
            
        return byte2HexStr(b);
	}
	
	/**
	 * 带 salt 的md5 加密
	 * @param target
	 * @param salt
	 * @return
	 * @throws NoSuchAlgorithmException
	 */
	public static String md5WithSalt(String target, String salt) throws NoSuchAlgorithmException{
		return md5(target + salt);
	}
	
	/**
	 * 将密码转换为加 salt 并md5 转换之后的格式，salt 使用 Lishibook 的内置值 LISHIBOK_SALT
	 * @param target
	 * @return
	 * @throws NoSuchAlgorithmException
	 */
	public static String encrypt(String target) throws NoSuchAlgorithmException{
		return md5(target + LISHIBOOK_SALT);
	}
	
	public static String byte2HexStr(byte[] b) {  
        StringBuilder sb = new StringBuilder();  
        for (int i = 0; i < b.length; i++) {  
            String s = Integer.toHexString(b[i] & 0xFF);  
            if (s.length() == 1) {  
                 sb.append("0");  
            }  
                  
            sb.append(s.toLowerCase());
         }  
              
         return sb.toString();  
    }
	
	public static String convertURIParam(String target) {  
		String charset = "UTF-8";  
		 
        try {  
            return new String(target.trim().getBytes("iso-8859-1"), charset);  
        } catch (UnsupportedEncodingException e) {  
            return target;  
        }  
    }
	
	public static void main(String[] args) throws NoSuchAlgorithmException{
		String s = "123456";
		System.out.println(encrypt(s));
	}
	
}
