package zzm.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	/*
	 * @SuppressWarnings("unchecked")
	 * 
	 * @Override
	 */
	    public String execute() throws Exception { 
	        Map<String, Object> attibutes = ActionContext.getContext().getSession(); 
	        attibutes.remove("userName"); 
	        return SUCCESS; 
	    } 
	    
}
