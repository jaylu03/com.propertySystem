package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="property_table")
public class PropertyVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "category_id")
	private CategoryVO categoryVO;
	
	@ManyToOne
	@JoinColumn(name = "subcategory_id")
	private SubCategoryVO subCategoryVO;
	
	@ManyToOne
	@JoinColumn(name = "constructionstatus_id")
	private ConstructionStatusVO ConstructionStatusVO;
	
	@ManyToOne
	@JoinColumn(name = "state_id")
	private StateVO stateVO;
	
	@ManyToOne
	@JoinColumn(name = "city_id")
	private CityVO cityVO;
	
	@ManyToOne
	@JoinColumn(name = "area_id")
	private AreaVO areaVO;

	@Column(name="bhk_name")
	private String bhkName;
	
	@Column(name="owner_name")
	private String ownerName;
	
	@Column(name="owner_contact")
	private String ownerContact;
	
	@Column(name="owner_email")
	private String ownerEmail;
	
	@Column(name="owner_address")
	private String ownerAddress;
	
	@Column(name="status")
	private boolean status=true;
	
	@Column(name="property_area")
	private String propertyAreaName;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public CategoryVO getCategoryVO() {
		return categoryVO;
	}

	public void setCategoryVO(CategoryVO categoryVO) {
		this.categoryVO = categoryVO;
	}

	public SubCategoryVO getSubCategoryVO() {
		return subCategoryVO;
	}

	public void setSubCategoryVO(SubCategoryVO subCategoryVO) {
		this.subCategoryVO = subCategoryVO;
	}

	public ConstructionStatusVO getConstructionStatusVO() {
		return ConstructionStatusVO;
	}

	public void setConstructionStatusVO(ConstructionStatusVO constructionStatusVO) {
		ConstructionStatusVO = constructionStatusVO;
	}

	public StateVO getStateVO() {
		return stateVO;
	}

	public void setStateVO(StateVO stateVO) {
		this.stateVO = stateVO;
	}

	public CityVO getCityVO() {
		return cityVO;
	}

	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}

	public AreaVO getAreaVO() {
		return areaVO;
	}

	public void setAreaVO(AreaVO areaVO) {
		this.areaVO = areaVO;
	}

	public String getBhkName() {
		return bhkName;
	}

	public void setBhkName(String bhkName) {
		this.bhkName = bhkName;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getOwnerContact() {
		return ownerContact;
	}

	public void setOwnerContact(String ownerContact) {
		this.ownerContact = ownerContact;
	}

	public String getOwnerEmail() {
		return ownerEmail;
	}

	public void setOwnerEmail(String ownerEmail) {
		this.ownerEmail = ownerEmail;
	}

	public String getOwnerAddress() {
		return ownerAddress;
	}

	public void setOwnerAddress(String ownerAddress) {
		this.ownerAddress = ownerAddress;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getPropertyAreaName() {
		return propertyAreaName;
	}

	public void setPropertyAreaName(String propertyAreaName) {
		this.propertyAreaName = propertyAreaName;
	}
	
	
}
