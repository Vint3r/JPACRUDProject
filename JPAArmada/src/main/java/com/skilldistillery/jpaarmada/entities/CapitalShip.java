package com.skilldistillery.jpaarmada.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "capital_ship")
public class CapitalShip {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "ship_class")
	private String shipClass;

	public CapitalShip() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getShipClass() {
		return shipClass;
	}

	public void setShipClass(String shipClass) {
		this.shipClass = shipClass;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((shipClass == null) ? 0 : shipClass.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CapitalShip other = (CapitalShip) obj;
		if (id != other.id)
			return false;
		if (shipClass == null) {
			if (other.shipClass != null)
				return false;
		} else if (!shipClass.equals(other.shipClass))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CapitalShip [id=" + id + ", shipClass=" + shipClass + "]";
	}
}
