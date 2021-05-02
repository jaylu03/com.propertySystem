package com.project.utils;

import java.util.Random;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

import ch.qos.logback.core.joran.conditional.ElseAction;

public class Basemethods {

	public static String getUser() {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		return userName;
	}

	public static String generateToken() {

		int n = 20;
		// chose a Character random from this String
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";

		// create StringBuffer size of AlphaNumericString
		StringBuilder sb = new StringBuilder(n);

		for (int i = 0; i < n; i++) {

			// generate a random number between
			// 0 to AlphaNumericString variable length
			int index = (int) (AlphaNumericString.length() * Math.random());

			// add Character one by one in end of sb
			sb.append(AlphaNumericString.charAt(index));
		}

		System.out.println("Token Generated....");

		return sb.toString();
	}

	/*
	 * public static char[] generateOTP() {
	 * 
	 * String numbers = "0123456789";
	 * 
	 * Random rndm = new Random();
	 * 
	 * char[] otp = new char[4];
	 * 
	 * for (int i = 0; i < 4; i++) { // Use of charAt() method : to get
	 * character value // Use of nextInt() as it is scanning the value as int
	 * otp[i] = numbers.charAt(rndm.nextInt(numbers.length())); } return otp;
	 * 
	 * // // Generate random integers in range 0 to 999 //int otp =
	 * rndm.nextInt(100000); //return String.valueOf(otp); }
	 */
	/*
	 * public static void sendMail(String to, char[] otp) {
	 * 
	 * String str = String. valueOf(otp);
	 * 
	 * final String from = "noreplyhpp@gmail.com";
	 * 
	 * final String username = "Academic Analyzer"; final String password =
	 * "Academic@Analyzer3";
	 * 
	 * String host = "smtp.gmail.com";
	 * 
	 * Properties props = new Properties(); props.put("mail.smtp.auth", "true");
	 * props.put("mail.smtp.starttls.enable", "true");
	 * props.put("mail.smtp.host", host); props.put("mail.smtp.port", "587");
	 * props.put("mails.smtp.ssl.trust", "smtp.gmail.com");
	 * 
	 * Session session = Session.getInstance(props, new
	 * javax.mail.Authenticator() { protected PasswordAuthentication
	 * getPasswordAuthentication() { return new PasswordAuthentication(from,
	 * password); } });
	 * 
	 * try { Message message = new MimeMessage(session); message.setFrom(new
	 * InternetAddress(from)); message.setRecipients(Message.RecipientType.TO,
	 * InternetAddress.parse(to)); message.setSubject("Approve ");
	 * 
	 * message.setText("OTP to recover password is " + str);
	 * 
	 * Transport.send(message);
	 * 
	 * System.out.println("Sent message successfully....");
	 * 
	 * } catch (Exception e) {
	 * 
	 * e.printStackTrace(); }
	 * 
	 * }
	 */

	/*
	 * public static void sendPassword(String email, String password1) {
	 * 
	 * final String from = "noreplyacademicanalyzer@gmail.com"; final String
	 * username = "Academic Analyzer"; final String password =
	 * "Academic@Analyzer3";
	 * 
	 * String host = "smtp.gmail.com";
	 * 
	 * Properties props = new Properties(); props.put("mail.smtp.auth", "true");
	 * props.put("mail.smtp.starttls.enable", "true");
	 * props.put("mail.smtp.host", host); props.put("mail.smtp.port", "587");
	 * props.put("mails.smtp.ssl.trust", "smtp.gmail.com");
	 * 
	 * Session session = Session.getInstance(props, new
	 * javax.mail.Authenticator() { protected PasswordAuthentication
	 * getPasswordAuthentication() { return new PasswordAuthentication(from,
	 * password); } });
	 * 
	 * try { Message message = new MimeMessage(session); message.setFrom(new
	 * InternetAddress(from)); message.setRecipients(Message.RecipientType.TO,
	 * InternetAddress.parse(email)); message.setSubject("Approve ");
	 * 
	 * message.
	 * setText("Hello, Your password updated successfully , Your new password to login is   "
	 * + password1);
	 * 
	 * Transport.send(message);
	 * 
	 * System.out.println("Sent message successfully....");
	 * 
	 * } catch (Exception e) {
	 * 
	 * e.printStackTrace(); } }
	 */

	// Different Methods

	public static String generateOTP() {

		System.out.println("in OTP Generated Method....");
		Random rand = new Random();

		// Generate random integers in range 0 to 999
		int otp = rand.nextInt(100000);

		System.out.println("OTP Generated....");
		return String.valueOf(otp);
	}

	public static void sendMail(String forgetpassword, String otp) {

		System.out.println("In sendMail Method....");

		final String from = "noreply.hpp@gmail.com";
		final String username = "Hpp";
		final String password = "Jay12345";

		String host = "smtp.gmail.com";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");
		props.put("mails.smtp.ssl.trust", "smtp.gmail.com");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {

			protected PasswordAuthentication getPasswordAuthentication() {

				System.out.println("sendMail successfully....");

				return new PasswordAuthentication(from, password);

			}
		});

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(forgetpassword));
			message.setSubject("Approve ");

			message.setText("Hello ,  your otp is " + otp);

			Transport.send(message);

			System.out.println("Sent message successfully....");

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	public static void sendPassword(String email, String password1) {

		System.out.println("In sendPassword Update Method::::::::::::");

		final String from = "noreply.hpp@gmail.com";
		final String username = "Hpp";
		final String password = "Jay12345";

		String host = "smtp.gmail.com";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");
		props.put("mails.smtp.ssl.trust", "smtp.gmail.com");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {

				System.out.println("sendPassword Successfully....");

				return new PasswordAuthentication(from, password);
			}
		});

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			message.setSubject("Approve ");

			message.setText("Hello, Your password updated successfully , Your new password to login is   " + password1);

			Transport.send(message);

			System.out.println("Sent message successfully....");

		} catch (Exception e) {

			System.out.println("In Catch Mthod");
			e.printStackTrace();
		}
	}

	public static void sucessfulRegister(String email) {

		System.out.println("In sendPassword Update Method::::::::::::");

		final String from = "noreply.hpp@gmail.com";
		final String username = "Hpp";
		final String password = "Jay12345";

		String host = "smtp.gmail.com";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");
		props.put("mails.smtp.ssl.trust", "smtp.gmail.com");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {

				System.out.println("sendPassword Successfully....");

				return new PasswordAuthentication(from, password);
			}
		});

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			message.setSubject("Approve ");

			message.setText("You are sucessfully Registerd wait for Admin to accept your Request");

			Transport.send(message);

			System.out.println("Sent message successfully....");

		} catch (Exception e) {

			System.out.println("In Catch Mthod");
			e.printStackTrace();
		}
	}

	public static void AcceptReject(String email, String status) {

		if (status == "accept") {
			System.out.println("In sendPassword Update Method::::::::::::");

			final String from = "noreply.hpp@gmail.com";
			final String username = "Hpp";
			final String password = "Jay12345";

			String host = "smtp.gmail.com";

			Properties props = new Properties();
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", "587");
			props.put("mails.smtp.ssl.trust", "smtp.gmail.com");

			Session session = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {

					System.out.println("sendPassword Successfully....");

					return new PasswordAuthentication(from, password);
				}
			});

			try {
				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress(from));
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
				message.setSubject("Approve ");

				message.setText("Your Request is Accepted by Admin");

				Transport.send(message);

				System.out.println("Sent message successfully....");

			} catch (Exception e) {

				System.out.println("In Catch Mthod");
				e.printStackTrace();
			}
		}

		else if (status == "reject") {
			System.out.println("In sendPassword Update Method::::::::::::");

			final String from = "noreply.hpp@gmail.com";
			final String username = "Hpp";
			final String password = "Jay12345";

			String host = "smtp.gmail.com";

			Properties props = new Properties();
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", "587");
			props.put("mails.smtp.ssl.trust", "smtp.gmail.com");

			Session session = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {

					System.out.println("sendPassword Successfully....");

					return new PasswordAuthentication(from, password);
				}
			});

			try {
				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress(from));
				message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
				message.setSubject("Approve ");

				message.setText("Your Request is Rejected by Admin");

				Transport.send(message);

				System.out.println("Sent message successfully....");

			} catch (Exception e) {

				System.out.println("In Catch Mthod");
				e.printStackTrace();
			}
		}

	}

}
