/**
 * 
 */
package com.solomen.controller;

import loggingpackage.LoggerClass;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.solomen.dataobject.User;
import com.solomen.service.IUserService;

import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

/**
 * @author Administrator
 *
 */

@Controller
@SessionAttributes("user")
@EnableWebMvc
public class RegisterUserController {
    private IUserService userService;
    private String debugMessage="User has entred following details User Name: %s Password: %s emailId: %s";
    private String redirectPage;
    
	/**
	 * @return the userService
	 */
	public IUserService getUserService() {
		return userService;
	}

	/**
	 * @param userService the userService to set
	 */
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	
	
	/**
	 * @return the redirectPage
	 */
	public String getRedirectPage() {
		return redirectPage;
	}

	/**
	 * @param redirectPage the redirectPage to set
	 */
	public void setRedirectPage(String redirectPage) {
		this.redirectPage = redirectPage;
	}

	@RequestMapping(value="/register", method=RequestMethod.GET )
	public String enrollUser(ModelMap map){
		
		User user=new User();
		user.setUserName("Guest");
		map.addAttribute("user", user);
		LoggerClass.writeLog(RegisterUserController.class,"UserName:------------------>"+user.getUserName());
		return "register";
	}
	
	@RequestMapping(value="/saveUser", method=RequestMethod.POST)
	public String saveUser(@ModelAttribute("user") User user, BindingResult result,SessionStatus sessionStatus,final RedirectAttributesModelMap redirectAttrs){
		LoggerClass.writeLog(RegisterUserController.class, String.format(debugMessage, user.getUserName(),user.getPassword(),user.getPassword()));
		final boolean isSaved= getUserService().saveUser(user); 
		redirectAttrs.addFlashAttribute("user", user);
		setRedirectPage(isSaved?"redirect:welcome.htm":"redirect:exception.htm");
		return getRedirectPage();
	}
	
	@RequestMapping(value="/welcome", method=RequestMethod.GET)
	public String welcome(@ModelAttribute("user") User user,ModelMap map){
		LoggerClass.writeLog(RegisterUserController.class,"UserName:------------------>"+user.getUserName());
		map.put("user", user);
		return "welcome";
	}
	
}
