package com.project.service;

import java.util.List;

import com.project.model.StateVO;

public interface StateService {

	public void saveState(StateVO stateVO);
	
	public List searchState();
	
	public List deleteState(StateVO stateVO);
	
	public List editState(StateVO stateVO);
}
