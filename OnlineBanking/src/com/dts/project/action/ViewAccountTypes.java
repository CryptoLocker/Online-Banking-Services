/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.dts.project.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dts.SBIBanking.dao.*;
import com.dts.core.util.CoreList;

/** 
 * MyEclipse Struts
 * Creation date: 02-12-2009
 * 
 * XDoclet definition:
 * @struts.action
 */
public class ViewAccountTypes extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	try{
		AccountTypeMasterDao adao=new AccountTypeMasterDao();
		CoreList acorelist=adao.ViewAccountTypeMaster();
		int size=acorelist.size();
		if(size!=0)
		{
			request.setAttribute("corelist",acorelist);
			return mapping.findForward("ViewAccountTypes");
			
		}
	}catch (Exception e) {
		// TODO: handle exception
	}return mapping.findForward("norecords");
	
	}
}