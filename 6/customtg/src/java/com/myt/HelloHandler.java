package com.myt;
import java.util.Calendar;  
import javax.servlet.jsp.JspException;  
import javax.servlet.jsp.JspWriter;  
import javax.servlet.jsp.tagext.TagSupport;  

public class HelloHandler extends TagSupport{  
  String myname;
  //Bean bean=new Bean();
      public void setname(String name) 
    {  
        this.myname = name;  
    }
public int doStartTag() throws JspException {  
    JspWriter out=pageContext.getOut();//returns the instance of JspWriter  
    try{  
        
       // myname=bean.getname();
     out.print("Hello "+ myname);
    }catch(Exception e){System.out.println(e);}  
    return SKIP_BODY;
}  
}  

