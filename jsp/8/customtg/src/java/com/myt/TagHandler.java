package com.myt;

import javax.servlet.jsp.JspException;  
import javax.servlet.jsp.JspWriter;  
import javax.servlet.jsp.tagext.TagSupport;  

public class TagHandler extends TagSupport{  

    String  input;
   
public void setinput(String input) {  
    this.input = input;  
}  


  
public int doStartTag() throws JspException {  
    JspWriter out=pageContext.getOut();//returns the instance of JspWriter  
    try{  

     //int val = Integer.parseInt(end);

     for (int i=input.length()-1;i>=0;i--) out.print(input.charAt(i));
    
    }catch(Exception e){System.out.println(e);}  
    return SKIP_BODY;
}  
}  

