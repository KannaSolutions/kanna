package com.kannasolution.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kannasolution.model.Form;
import com.kannasolution.service.MailSendingService;

@Controller
public class KannaSolutionController {
	@Autowired
	private MailSendingService mailSendingService;

	@RequestMapping(value = "/home")
	public String kannaSolutionPage() {
		return "KannaSolutions";
	}

	@RequestMapping(value = "/Registration")
	public String registrationPage() {
		return "RegistrationForm";
	}

	@RequestMapping(value = "/RegistrationSave")
	public String saveRegisterData(@ModelAttribute(name = "form") Form form, Model model) {
		try {
			mailSendingService.sendMail(form);
		} catch (Exception e) {
			model.addAttribute("msg", "Something Went Wrong.");
			e.printStackTrace();
			return "RegistrationForm";

		}
		model.addAttribute("msg",
				"Applied Successfully.Agent will contact you soon.Thank you for being a part of Kanna Solutions");
		return "RegistrationForm";
	}
}
