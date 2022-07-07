package com.gl.iitr.springmvc.crm.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CRMWelcomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showCustomerList(Model model) {		
		return "redirect:/customer/list";
	}
}
