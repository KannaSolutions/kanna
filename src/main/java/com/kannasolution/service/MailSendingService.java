package com.kannasolution.service;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.stereotype.Service;

import com.kannasolution.model.Form;

@Service
public class MailSendingService {
	@SuppressWarnings("unused")
	public void sendMail(Form form) throws Exception {
		try {
		String message = "First Name: " + form.getFname() + "\nSurname: " + form.getSname() + "\nMobile No: "
				+ form.getMobileno() + "\nEmail: " + form.getEmail() +"\nExpected Loan Amount: "+form.getExpectedLoanAmount()+ "\nLoan Type: " + form.getLoanName()+"\n\n Thank You.";
		String subject = "New Registration:" + form.getFname() + " " + form.getSname();
		//String to = "myofficedemomail@gmail.com";
		String to= "sravan17091997@gmail.com";
		String from = "kannasolutions427@gmail.com";
		String host = "smtp.gmail.com";
		String password="znxzicwqnuvfrzwi";
		Properties properties = System.getProperties();
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");

		//Session session = Session.getDefaultInstance(properties);
		
		Session session = Session.getInstance(properties, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		});
		 

		session.setDebug(true);

		MimeMessage m = new MimeMessage(session);

			MimeMultipart mimeMultipart = new MimeMultipart();
			MimeBodyPart textmime = new MimeBodyPart();

			textmime.setText(message);

			mimeMultipart.addBodyPart(textmime);

			m.setFrom(from);
			m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			m.setSubject(subject);
			m.setContent(mimeMultipart);
			Transport.send(m);
			System.out.println("Mail Sent"+to);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
