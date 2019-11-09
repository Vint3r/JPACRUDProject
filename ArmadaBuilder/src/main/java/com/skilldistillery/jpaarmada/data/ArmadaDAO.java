package com.skilldistillery.jpaarmada.data;

import java.util.List;

import com.skilldistillery.jpaarmada.entities.CapitalShip;

public interface ArmadaDAO {
	
	public List<CapitalShip> getShipByClass(String type);
	public List<CapitalShip> getAllShips();
	public List<CapitalShip> getAllShipsByAlignment(String alignment);
	public List<CapitalShip> getShipsByCost(int points);
	public boolean addAShip(CapitalShip shipAdd);
	public boolean deleteAShip(int id);
	public CapitalShip updateAShip(CapitalShip shipUp);
	public CapitalShip getShipById(int shipId);
}
