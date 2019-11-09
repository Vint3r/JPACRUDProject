package com.skilldistillery.jpaarmada.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpaarmada.entities.CapitalShip;

@Transactional
@Service
public class ArmadaDAOImpl implements ArmadaDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<CapitalShip> getShipByClass(String type) {
		String sql = "SELECT ship FROM CapitalShip ship WHERE ship.class LIKE :fclass";
		List<CapitalShip> ships = em.createQuery(sql, CapitalShip.class).setParameter("fclass", "%" + type + "%")
				.getResultList();
		return ships;
	}

	@Override
	public List<CapitalShip> getAllShips() {
		String sql = "SELECT ship FROM CapitalShip ship ORDER BY ship.alignment, ship.pointCost";
		List<CapitalShip> ships = em.createQuery(sql, CapitalShip.class).getResultList();
		return ships;
	}

	@Override
	public List<CapitalShip> getAllShipsByAlignment(String alignment) {
		String sql = "SELECT ship FROM CapitalShip ship WHERE ship.alignment LIKE :align";
		List<CapitalShip> ships = em.createQuery(sql, CapitalShip.class).setParameter("align", "%" + alignment + "%")
				.getResultList();
		return ships;
	}

	@Override
	public List<CapitalShip> getShipsByCost(int points) {
		String sql = "SELECT ship FROM CapitalShip ship WHERE ship.pointCost > :points ORDER BY ship.pointCost";
		List<CapitalShip> ships = em.createQuery(sql, CapitalShip.class).setParameter("points", points).getResultList();
		return ships;
	}

	@Override
	public boolean addAShip(CapitalShip shipAdd) {
		em.persist(shipAdd);
		em.flush();
		boolean success = !em.contains(shipAdd);
		return success;
	}

	@Override
	public boolean deleteAShip(int id) {
		CapitalShip ship = em.find(CapitalShip.class, id);
		boolean success = false;

		if (!ship.equals(null)) {
			em.remove(ship);
			em.flush();
		}
		success = !em.contains(ship);
		return success;
	}

	@Override
	public CapitalShip updateAShip(CapitalShip shipUp) {
		CapitalShip update = em.find(CapitalShip.class, shipUp.getId());
		if (!update.equals(null)) {
			update.setShipClass(shipUp.getShipClass());
			update.setCommand(shipUp.getCommand());
			update.setEngineering(shipUp.getEngineering());
			update.setSquadron(shipUp.getSquadron());
			update.setHull(shipUp.getHull());
			update.setForwardShields(shipUp.getForwardShields());
			update.setLeftShields(shipUp.getLeftShields());
			update.setRearShields(shipUp.getRearShields());
			update.setRightShields(shipUp.getRightShields());
			update.setAlignment(shipUp.getAlignment());
			update.setPointCost(shipUp.getPointCost());
		}
		em.flush();
		return update;
	}

	@Override
	public CapitalShip getShipById(int shipId) {
		CapitalShip ship = em.find(CapitalShip.class, shipId);
		return ship;
	}
}
