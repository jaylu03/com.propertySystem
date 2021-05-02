package com.project.service;

import java.util.List;

import com.project.model.OTPTable;

public interface OTPService {

	void saveOTPTable(OTPTable otptable);

	List<OTPTable> getOTPTable();

	List<OTPTable> findById(int Id);

	List getByEmail(String forgetpassword);

	List verifyOTP(OTPTable otpTable);
}
