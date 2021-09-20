package com.heatmap.controller;

import java.util.Date;

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

@Controller
public class RegistrationController {
	
	private static final Logger logger=LoggerFactory.getLogger(RegistrationController.class);

	@Autowired
	private UserDetailsService userDetailsService;
	
	@Autowired
	private PasswordUtil passwordUtil;
	
	@GetMapping(AppConstant.REGISTERURL)
	public String registerUser() {
		logger.info("Executing method register of class RegistrationController");
		return AppConstant.REGISTER;
	}

	@PostMapping(AppConstant.REGISTERACTIONURL)
	public String submitRegisteredForm(Model model, @ModelAttribute("userDetails")UserDetails userDetails) {
		logger.info("Executing method submit of class RegistrationController");
		userDetails.setCreatedOn(new Date());
		userDetails.setNoOfDays(AppConstant.NOOFDAYSOFMAILACTIVATION);
		userDetails.setPassword(passwordUtil.encryptPassword(userDetails.getPassword()));
		userDetails.setStatus(AppConstant.ACTIVE);
		userDetailsService.save(userDetails);
		return AppConstant.LOGIN;
	}

}
