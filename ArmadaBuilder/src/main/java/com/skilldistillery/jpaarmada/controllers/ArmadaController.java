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
	public String index(Model model) {
		model.addAttribute("ship", new CapitalShip());
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
	
	@RequestMapping(path = "delete.do", method = RequestMethod.GET)
	public ModelAndView deleteShip(CapitalShip ship) {
		ModelAndView mv = new ModelAndView();
		Boolean success = dao.deleteAShip(ship.getId());
		mv.addObject("ship", new CapitalShip());
		mv.addObject("success", success);
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(path = "update.do", method = RequestMethod.GET)
	public ModelAndView updateShip(CapitalShip ship) {
		ModelAndView mv = new ModelAndView();
		Boolean success = dao.updateAShip(ship);
		mv.addObject("ship", ship);
		mv.addObject("success", success);
		mv.setViewName("displaySingle");
		return mv;
	}
	
	@RequestMapping(path = "getShipClass.do", params = "shipClass", method = RequestMethod.GET)
	public ModelAndView getClassList(@Valid CapitalShip ship, Errors errors) {
		ModelAndView mv = new ModelAndView();
		List<CapitalShip> ships = null;
		if(!ship.getShipClass().equals(null) && !ship.getShipClass().equals("")) {
			ships = dao.getShipByClass(ship.getShipClass());
		} else {
			ship.setShipClass("Cannot be empty.");
			mv.addObject("ship", ship);
			mv.setViewName("index");
			return mv;
		}
		if (ships.isEmpty() || ships.equals(null)) {
			ship.setShipClass("No ships matching search");
			mv.addObject("ship", ship);
			mv.setViewName("index");
			return mv;
		}
		mv.addObject("ships", ships);
		mv.setViewName("displayAll");
		return mv;
	}
	
	@RequestMapping(path = "getShipPoints.do", params = "pointCost", method = RequestMethod.GET)
	public ModelAndView getPointList(@Valid CapitalShip ship, Errors errors) {
		ModelAndView mv = new ModelAndView();
		List<CapitalShip> ships = null;
		if(ship.getPointCost() == null) {
			ship.setAlignment("Cannot be empty.");
			mv.addObject("ship", ship);
			mv.setViewName("index");
			return mv;
		} else {
			ships = dao.getShipsByCost(ship.getPointCost());
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
	
	@RequestMapping(path = "goAddShip.do", method = RequestMethod.GET)
	public ModelAndView goToAdd() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("ship", new CapitalShip());
		mv.setViewName("add");
		return mv;
	}
	
	@RequestMapping(path = "create.do", method = RequestMethod.GET)
	public ModelAndView createThenDisplay(CapitalShip ship) {
		ModelAndView mv = new ModelAndView();
		Boolean success = dao.addAShip(ship);
		mv.addObject("success", success);
		mv.addObject("ship", ship);
		mv.setViewName("displaySingle");
		return mv;
	}
}
