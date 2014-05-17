package com.lishibook.exception;

public class NoPageException extends Exception{
	
	private static final long serialVersionUID = 2530836082156246874L;
	
	public NoPageException(){
        super();
    }
	
    public NoPageException(String msg){
        super(msg);
    }

}
