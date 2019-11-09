package com.skilldistillery.jpaarmada.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

@Transactional
@Service
public class ArmadaDAOImpl implements ArmadaDAO {

	@PersistenceContext
	private EntityManager em;
}
