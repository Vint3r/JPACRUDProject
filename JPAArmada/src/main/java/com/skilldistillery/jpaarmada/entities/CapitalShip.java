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
	private String alignment;
	@Column(name = "command_value")
	private Integer command;
	@Column(name = "engineering_value")
	private Integer engineering;
	@Column(name = "squadron_value")
	private Integer squadron;
	private Integer hull;
	@Column(name = "point_cost")
	private Integer pointCost;
	@Column(name = "forward_shields")
	private Integer forwardShields;
	@Column(name = "right_shields")
	private Integer rightShields;
	@Column(name = "left_shields")
	private Integer leftShields;
	@Column(name = "rear_shields")
	private Integer rearShields;

	public CapitalShip() {
		super();
	}

	public String getAlignment() {
		return alignment;
	}

	public void setAlignment(String alignment) {
		this.alignment = alignment;
	}

	public Integer getCommand() {
		return command;
	}

	public void setCommand(Integer command) {
		this.command = command;
	}

	public Integer getEngineering() {
		return engineering;
	}

	public void setEngineering(Integer engineering) {
		this.engineering = engineering;
	}

	public Integer getSquadron() {
		return squadron;
	}

	public void setSquadron(Integer squadron) {
		this.squadron = squadron;
	}

	public Integer getHull() {
		return hull;
	}

	public void setHull(Integer hull) {
		this.hull = hull;
	}

	public Integer getPointCost() {
		return pointCost;
	}

	public void setPointCost(Integer pointCost) {
		this.pointCost = pointCost;
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

	public Integer getForwardShields() {
		return forwardShields;
	}

	public void setForwardShields(Integer forwardShields) {
		this.forwardShields = forwardShields;
	}

	public Integer getRightShields() {
		return rightShields;
	}

	public void setRightShields(Integer rightShields) {
		this.rightShields = rightShields;
	}

	public Integer getLeftShields() {
		return leftShields;
	}

	public void setLeftShields(Integer leftShields) {
		this.leftShields = leftShields;
	}

	public Integer getRearShields() {
		return rearShields;
	}

	public void setRearShields(Integer rearShields) {
		this.rearShields = rearShields;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((alignment == null) ? 0 : alignment.hashCode());
		result = prime * result + ((command == null) ? 0 : command.hashCode());
		result = prime * result + ((engineering == null) ? 0 : engineering.hashCode());
		result = prime * result + ((forwardShields == null) ? 0 : forwardShields.hashCode());
		result = prime * result + ((hull == null) ? 0 : hull.hashCode());
		result = prime * result + id;
		result = prime * result + ((leftShields == null) ? 0 : leftShields.hashCode());
		result = prime * result + ((pointCost == null) ? 0 : pointCost.hashCode());
		result = prime * result + ((rearShields == null) ? 0 : rearShields.hashCode());
		result = prime * result + ((rightShields == null) ? 0 : rightShields.hashCode());
		result = prime * result + ((shipClass == null) ? 0 : shipClass.hashCode());
		result = prime * result + ((squadron == null) ? 0 : squadron.hashCode());
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
		if (alignment == null) {
			if (other.alignment != null)
				return false;
		} else if (!alignment.equals(other.alignment))
			return false;
		if (command == null) {
			if (other.command != null)
				return false;
		} else if (!command.equals(other.command))
			return false;
		if (engineering == null) {
			if (other.engineering != null)
				return false;
		} else if (!engineering.equals(other.engineering))
			return false;
		if (forwardShields == null) {
			if (other.forwardShields != null)
				return false;
		} else if (!forwardShields.equals(other.forwardShields))
			return false;
		if (hull == null) {
			if (other.hull != null)
				return false;
		} else if (!hull.equals(other.hull))
			return false;
		if (id != other.id)
			return false;
		if (leftShields == null) {
			if (other.leftShields != null)
				return false;
		} else if (!leftShields.equals(other.leftShields))
			return false;
		if (pointCost == null) {
			if (other.pointCost != null)
				return false;
		} else if (!pointCost.equals(other.pointCost))
			return false;
		if (rearShields == null) {
			if (other.rearShields != null)
				return false;
		} else if (!rearShields.equals(other.rearShields))
			return false;
		if (rightShields == null) {
			if (other.rightShields != null)
				return false;
		} else if (!rightShields.equals(other.rightShields))
			return false;
		if (shipClass == null) {
			if (other.shipClass != null)
				return false;
		} else if (!shipClass.equals(other.shipClass))
			return false;
		if (squadron == null) {
			if (other.squadron != null)
				return false;
		} else if (!squadron.equals(other.squadron))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CapitalShip [id=" + id + ", shipClass=" + shipClass + ", alignment=" + alignment + ", command="
				+ command + ", engineering=" + engineering + ", squadron=" + squadron + ", hull=" + hull
				+ ", pointCost=" + pointCost + ", forwardShields=" + forwardShields + ", rightShields=" + rightShields
				+ ", leftShields=" + leftShields + ", rearShields=" + rearShields + "]";
	}
}
