package com.project.dao;

import java.util.List;

import com.project.model.FeedbackVO;

public interface FeedbackDAO {

	public void saveFeedback(FeedbackVO feedbackVO);
	
	public List searchFeedback();
	
	public List deleteFeedback(FeedbackVO feedbackVO);
}
