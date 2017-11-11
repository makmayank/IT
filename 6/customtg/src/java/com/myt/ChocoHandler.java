package com.myt;
import java.util.Calendar;  
import javax.servlet.jsp.JspException;  
import javax.servlet.jsp.JspWriter;  
import javax.servlet.jsp.tagext.TagSupport;  

public class ChocoHandler extends TagSupport{  
  String texture;
//    Bean bean=new Bean();
    
      public void settexture(String choco) 
    {  
        this.texture = choco;  
    }  
public int doStartTag() throws JspException {  
    JspWriter out=pageContext.getOut();//returns the instance of JspWriter  
    try{  

              
             //   texture=bean.gettexture();
                if(texture.equals("crunchy"))
                {
                    out.print("munch  perk  goo");
                }
                else if(texture.equals("chewy")){
    
                    out.print("five star snicker chu");
                }
                else 
                {
                    out.print("get some help");
                }

    }catch(Exception e){System.out.println(e);}  
    return SKIP_BODY;
}  
}  

