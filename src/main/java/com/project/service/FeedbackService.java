package com.project.service;

import java.util.List;

import com.project.model.FeedbackVO;

public interface FeedbackService {

	public void saveFeedback(FeedbackVO feedbackVO);
	
	public List searchFeedback();
	
	public List deleteFeedback(FeedbackVO feedbackVO);

}
