package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "detection_table")
public class DetectionVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "crime_rate")
	private Float crimeRate;
	
	@Column(name = "river")
	private String river;
	
	@Column(name = "nitricOxides_level")
	private Float nitricOxidesLevel;
	
	@Column(name = "averageRoomCount")
	private Float averageRoomCount;
	
	@Column(name = "house_age")
	private Float houseAge;
	
	@Column(name = "residentialLandZone_area")
	private Float residentialLandZoneArea;
	
	@Column(name = "industrialLocation_distance")
	private Float industrialLocationDistance;
	
	@Column(name = "radialHighways_count")
	private Float radialHighwaysCount;
	
	@Column(name = "propertyTax_rate")
	private int propertyTaxRate;
	
	@Column(name = "pupilTeacher_ratio")
	private Float pupilTeacherRatio;
	
	@Column(name = "migrantPopulationRatio")
	private Float migrantPopulationRatio;
	
	@Column(name = "ruralPopulationRatio")
	private Float ruralPopulationRatio;
	
	@Column(name = "house_price")
	private Float housePrice;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Float getCrimeRate() {
		return crimeRate;
	}

	public void setCrimeRate(Float crimeRate) {
		this.crimeRate = crimeRate;
	}

	public String getRiver() {
		return river;
	}

	public void setRiver(String river) {
		this.river = river;
	}

	public Float getNitricOxidesLevel() {
		return nitricOxidesLevel;
	}

	public void setNitricOxidesLevel(Float nitricOxidesLevel) {
		this.nitricOxidesLevel = nitricOxidesLevel;
	}

	public Float getAverageRoomCount() {
		return averageRoomCount;
	}

	public void setAverageRoomCount(Float averageRoomCount) {
		this.averageRoomCount = averageRoomCount;
	}

	public Float getHouseAge() {
		return houseAge;
	}

	public void setHouseAge(Float houseAge) {
		this.houseAge = houseAge;
	}

	public Float getIndustrialLocationDistance() {
		return industrialLocationDistance;
	}

	public void setIndustrialLocationDistance(Float industrialLocationDistance) {
		this.industrialLocationDistance = industrialLocationDistance;
	}

	public Float getRadialHighwaysCount() {
		return radialHighwaysCount;
	}

	public void setRadialHighwaysCount(Float radialHighwaysCount) {
		this.radialHighwaysCount = radialHighwaysCount;
	}

	public int getPropertyTaxRate() {
		return propertyTaxRate;
	}

	public void setPropertyTaxRate(int propertyTaxRate) {
		this.propertyTaxRate = propertyTaxRate;
	}

	public Float getPupilTeacherRatio() {
		return pupilTeacherRatio;
	}

	public void setPupilTeacherRatio(Float pupilTeacherRatio) {
		this.pupilTeacherRatio = pupilTeacherRatio;
	}

	public Float getMigrantPopulationRatio() {
		return migrantPopulationRatio;
	}

	public void setMigrantPopulationRatio(Float migrantPopulationRatio) {
		this.migrantPopulationRatio = migrantPopulationRatio;
	}

	public Float getRuralPopulationRatio() {
		return ruralPopulationRatio;
	}

	public void setRuralPopulationRatio(Float ruralPopulationRatio) {
		this.ruralPopulationRatio = ruralPopulationRatio;
	}

	public Float getHousePrice() {
		return housePrice;
	}

	public void setHousePrice(Float housePrice) {
		this.housePrice = housePrice;
	}

	public Float getResidentialLandZoneArea() {
		return residentialLandZoneArea;
	}

	public void setResidentialLandZoneArea(Float residentialLandZoneArea) {
		this.residentialLandZoneArea = residentialLandZoneArea;
	}
	
}
