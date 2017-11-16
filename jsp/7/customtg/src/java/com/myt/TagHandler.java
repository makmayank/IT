package com.myt;

import javax.servlet.jsp.JspException;  
import javax.servlet.jsp.JspWriter;  
import javax.servlet.jsp.tagext.TagSupport;  

public class TagHandler extends TagSupport{  
    private int end; //last end
    String  input;
    int start;
      
public void setinput(String input) {  
    this.input = input;  
}  
public void setend(int end) {  
    this.end = end;  
} 
public void setstart(int start) {  
    this.start = start;  
} 

  
public int doStartTag() throws JspException {  
    JspWriter out=pageContext.getOut();//returns the instance of JspWriter  
    try{  

     //int val = Integer.parseInt(end);
     out.print(input.substring(start,end));  
    }catch(Exception e){System.out.println(e);}  
    return SKIP_BODY;
}  
}  

