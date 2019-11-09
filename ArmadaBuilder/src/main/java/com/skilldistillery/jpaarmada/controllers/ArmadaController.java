package com.skilldistillery.jpaarmada.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpaarmada.data.ArmadaDAO;
import com.skilldistillery.jpaarmada.entities.CapitalShip;

@Controller
public class ArmadaController {
	@Autowired
	ArmadaDAO dao;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(ModelAndView model) {
		model.addObject("ship", new CapitalShip());
		return "index";
	}
	
	@RequestMapping(path = "getShipList.do", method = RequestMethod.GET)
	public ModelAndView fullShipList() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("ships", dao.getAllShips());
		mv.setViewName("displayAll");
		return mv;
	}
	
	@RequestMapping(path = "getShipAlign.do", params = "alignment", method = RequestMethod.GET)
	public ModelAndView alignShipsList(@Valid CapitalShip ship, Errors errors) {
		ModelAndView mv = new ModelAndView();
		List<CapitalShip> ships = null;
		if(!ship.getAlignment().equals(null) && !ship.getAlignment().equals("")) {
			ships = dao.getAllShipsByAlignment(ship.getAlignment());
		} else {
			ship.setAlignment("Cannot be empty.");
			mv.addObject("ship", ship);
			mv.setViewName("index");
			return mv;
		}
		if (ships.isEmpty() || ships.equals(null)) {
			ship.setAlignment("No ships matching search");
			mv.addObject("ship", ship);
			mv.setViewName("index");
			return mv;
		}
		mv.addObject("ships", ships);
		mv.setViewName("displayAll");
		return mv;
	}
	
	@RequestMapping(path = "getAllShipInfo.do", method = RequestMethod.GET)
	public ModelAndView getAllInfo(@RequestParam("sid") int shipId) {
		ModelAndView mv = new ModelAndView();
		CapitalShip ship = dao.getShipById(shipId);
		mv.addObject("ship", ship);
		mv.setViewName("displaySingle");
		return mv;
	}
}
