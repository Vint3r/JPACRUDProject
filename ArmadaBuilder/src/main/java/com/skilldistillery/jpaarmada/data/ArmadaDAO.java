package com.skilldistillery.jpaarmada.data;

import java.util.List;

import com.skilldistillery.jpaarmada.entities.CapitalShip;

public interface ArmadaDAO {
	
	public List<CapitalShip> getShipByClass(String type);
	public List<CapitalShip> getAllShips();//1
	public List<CapitalShip> getAllShipsByAlignment(String alignment);//1
	public List<CapitalShip> getShipsByCost(int points);
	public boolean addAShip(CapitalShip shipAdd);
	public boolean deleteAShip(int id);//1
	public boolean updateAShip(CapitalShip shipUp);//1
	public CapitalShip getShipById(int shipId);//1
}
