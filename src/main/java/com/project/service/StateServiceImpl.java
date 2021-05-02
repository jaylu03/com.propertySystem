package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.StateDAO;
import com.project.model.StateVO;

@Service
@Transactional
public class StateServiceImpl implements StateService{

	@Autowired
	StateDAO stateDAO;

	@Override
	public void saveState(StateVO stateVO) {
		this.stateDAO.saveState(stateVO);
	}

	@Override
	public List searchState() {
		return this.stateDAO.searchState();

	}

	@Override
	public List deleteState(StateVO stateVO) {
		return this.stateDAO.deleteState(stateVO);
	}

	@Override
	public List editState(StateVO stateVO) {
		return this.stateDAO.editState(stateVO);

	}

}
