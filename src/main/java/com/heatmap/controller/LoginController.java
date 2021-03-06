package com.heatmap.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.heatmap.constants.AppConstant;
import com.heatmap.model.UserDetails;
import com.heatmap.service.UserDetailsService;
import com.heatmap.util.PasswordUtil;
import com.heatmap.util.PropertiesFileUtility;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private UserDetailsService userDetailsService;

	@Autowired
	private PasswordUtil passwordUtil;

	@Autowired
	private PropertiesFileUtility propFileUtility;

	@GetMapping(value = { AppConstant.LOGINURL, AppConstant.LOGINURLS })
	public String loadFirstPage(Model model,HttpSession session) {
		logger.info("Executing method loadFirstPage of class LoginController");
		session.invalidate();
		model.addAttribute(AppConstant.MESSAGE, propFileUtility
				.getValueFromPropertiesFile(AppConstant.PROPERTIESFILENAME, AppConstant.LOGINPAGEHEADER));
		return AppConstant.LOGIN;
	}

	@PostMapping(AppConstant.LOGINACTIONURL)
	public String submitLoginForm(Model model, @ModelAttribute("userDetails") UserDetails userDetails,
			HttpSession session) {
		logger.info("Executing method submitLoginForm of class LoginController");
		if (userDetails != null && userDetails.getEmail() != null && !(userDetails.getEmail().trim().equals(""))
				&& userDetails.getPassword() != null && !(userDetails.getPassword().trim().equals(""))) {
			String enteredEmail = userDetails.getEmail();
			String enteredPassword = userDetails.getPassword();
			userDetails = userDetailsService.findByEmail(enteredEmail);
			if (userDetails != null) {
				String password = userDetails.getPassword();
				if (password != null && passwordUtil.decryptPassword(password).equals(enteredPassword)) {
					if (!userDetails.getStatus().equals(AppConstant.ACTIVE)) {
						model.addAttribute(AppConstant.ERROR, propFileUtility
								.getValueFromPropertiesFile(AppConstant.PROPERTIESFILENAME, "deactiveAccount"));
						model.addAttribute(AppConstant.MESSAGE, propFileUtility.getValueFromPropertiesFile(
								AppConstant.PROPERTIESFILENAME, AppConstant.LOGINPAGEHEADER));
						return AppConstant.LOGIN;
					}
					userDetailsService.updateloggedInTime(new Date(), userDetails.getuId());
					session.setAttribute(AppConstant.USEREMAIL, enteredEmail);
					return AppConstant.LOGINSUCCESS;
				}
			}
			model.addAttribute(AppConstant.ERROR,
					propFileUtility.getValueFromPropertiesFile(AppConstant.PROPERTIESFILENAME, "invalidLogin"));
			model.addAttribute(AppConstant.MESSAGE, propFileUtility
					.getValueFromPropertiesFile(AppConstant.PROPERTIESFILENAME, AppConstant.LOGINPAGEHEADER));
			return AppConstant.LOGIN;
		} else {
			model.addAttribute(AppConstant.MESSAGE, propFileUtility
					.getValueFromPropertiesFile(AppConstant.PROPERTIESFILENAME, AppConstant.LOGINPAGEHEADER));
			model.addAttribute(AppConstant.ERROR,
					propFileUtility.getValueFromPropertiesFile(AppConstant.PROPERTIESFILENAME, "blankRequest"));
			return AppConstant.LOGIN;
		}
	}

	@GetMapping(value={AppConstant.SENDOTP,AppConstant.CHECKOTP,AppConstant.UPDATEPASSWORD,AppConstant.LOGINACTIONURL})
	public String redirectToLoginPage() {
		logger.info("Executing method directlyHittingSendOtp of class LoginController");
		return AppConstant.LOGIN;
	}
	
	@GetMapping(AppConstant.LOGOUTURL)
	public String logout(HttpSession session) {
		session.invalidate();
		return AppConstant.LOGIN;
	}
}
