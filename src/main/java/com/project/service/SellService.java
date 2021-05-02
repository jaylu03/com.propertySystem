package com.project.service;

import com.project.model.SellPropertyImageVO;
import com.project.model.SellVO;

public interface SellService {

	public void saveSellProperty(SellVO sellVO);

	public void saveSellPropertyImage(SellPropertyImageVO sellPropertyImageVO);

}
