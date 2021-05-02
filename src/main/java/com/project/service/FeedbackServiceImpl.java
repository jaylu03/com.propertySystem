package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.FeedbackDAO;
import com.project.model.FeedbackVO;

@Service
@Transactional
public class FeedbackServiceImpl implements FeedbackService{
	

	@Autowired
	FeedbackDAO feedbackDAO;
	
	@Override
	public void saveFeedback(FeedbackVO feedbackVO) {
		this.feedbackDAO.saveFeedback(feedbackVO);
		
	}

	@Override
	public List searchFeedback() {
		return this.feedbackDAO.searchFeedback();
	}

	@Override
	public List deleteFeedback(FeedbackVO feedbackVO) {
		return this.feedbackDAO.deleteFeedback(feedbackVO);
	}

}
