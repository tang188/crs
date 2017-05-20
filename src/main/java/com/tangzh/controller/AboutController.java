package com.tangzh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/about")
public class AboutController {
	
	@RequestMapping("/about.do")
	public String about() {
		return "about";
	}
}
