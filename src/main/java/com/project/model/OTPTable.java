package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;


@Entity
@Table(name = "otp_table")
public class OTPTable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private int Id;

	@Column(name = "otp")
	private String otp;

	@Column(name = "token")
	private String token;

	@Column(name = "email")
	private String email;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setOtp(char[] otp2) {
		// TODO Auto-generated method stub
		
	}
		
}
