package com.skilldistillery.jpaarmada.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class CapitalShipTest {
	private static EntityManagerFactory emf;
	private static EntityManager em;
	private CapitalShip cp;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("FleetBuilder");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		cp = em.find(CapitalShip.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		cp = null;
	}

	@Test
	@DisplayName("Testing for correct id and class from database")
	void testShip1() {
		assertEquals(1, cp.getId());
		assertEquals("CR90", cp.getShipClass());
	}

}
