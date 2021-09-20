package com.heatmap.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.heatmap.constants.AppConstant;

@Controller
public class ViewController {

	private static final Logger logger=LoggerFactory.getLogger(ViewController.class);
	
	@GetMapping(AppConstant.TEMPLATEDOWNLOADURL)
	public String templateDownload(Model model,HttpSession session){
		logger.info("Executing method templateDownload of class ViewController");
		if(session.getAttribute(AppConstant.USEREMAIL)==null)
			return AppConstant.LOGIN;
		return AppConstant.TEMPLATEDOWNLOAD;
	}

}
