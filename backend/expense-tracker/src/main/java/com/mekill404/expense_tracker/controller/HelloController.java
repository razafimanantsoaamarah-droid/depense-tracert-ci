package com.mekill404.expense_tracker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	@GetMapping("/api/hello")
	public String helloEveryOne()
	{
		return ("Backend 42 Ready");
	}
}
