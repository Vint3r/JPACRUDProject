package com.skilldistillery.jpaarmada.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jpaarmada.data.ArmadaDAO;

@Controller
public class ArmadaController {
	@Autowired
	ArmadaDAO dao;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
}
