package com.esun.esuninterview.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	
	
	@GetMapping(value = { "/backend" })
	public String getBackendPage() {
		return "backend/index";
	}	
	
	@GetMapping(value = { "/" })
	public String getFrontendPage() {
		return "frontend/index";
	}
	
	@GetMapping(value = { "/working" })
	public String working() {
		return "working";
	}
	
}
