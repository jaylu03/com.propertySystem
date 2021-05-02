package com.project.dao;

import com.project.model.SellPropertyImageVO;
import com.project.model.SellVO;

public interface SellDAO {

	public void saveSellProperty(SellVO sellVO);

	public void saveSellPropertyImage(SellPropertyImageVO sellPropertyImageVO);
}
