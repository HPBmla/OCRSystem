package model;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
	public String emailTo = "bimlamadhavee@gmail.com";
	
/*	public boolean sendMail( final String emailFrom, String message, String usernme, String passwrd)
	{
		
		final String username = usernme;
		final String password = passwrd;
		String host = "smtp.gmail.com";
		String port = "587";
		
		boolean success = false;
	
   /*    Properties prop = new Properties();
       prop.put("mail.smtp.auth", "true");
       prop.put("mail.smtp.starttls.enable", "true");
       prop.put("mail.smtp.host", "smtp.gmail.com");
       prop.put("mail.smtp.port", "587");
 
        Session sess = Session.getInstance(prop, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(emailFrom, password);
            }
        });
        Message mssg = new MimeMessage(sess);
        try {
			mssg.setFrom(new InternetAddress(""+emailFrom));
			  mssg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
		
		        mssg.setSubject("Suggestions");
		        mssg.setContent(message, "text/html; charset=utf-8");
		        
		        Transport.send(mssg);
		        success = true; 
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 Properties properties = System.getProperties();
		 properties.setProperty("mail.smtp.host", host);
		 properties.setProperty("mail.smtp.starttls.enable", "true");
	
		 Session session = Session.getDefaultInstance(properties);
		 MimeMessage messages = new MimeMessage(session);
		 try {
			messages.setFrom(new InternetAddress(emailFrom));
			messages.addRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
			messages.setSubject("This is the Subject Line!");
			messages.setText(message);
			Transport.send(messages);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return success;
		
	

}*/
	public static void main(String[] args) {
		final String fromEmail = "tharinduac1991@gmail.com"; //requires valid gmail id
		final String password = "lambert5"; // correct password for gmail id
		final String toEmail = "bimlamadhavee@yahoo.com"; // can be any email id 
		
		System.out.println("TLSEmail Start");
		Properties props = new Properties();
		props.put("mail.smtp.host", "gmail.com"); //SMTP Host
		props.put("mail.smtp.port", "587"); //TLS Port
		props.put("mail.smtp.auth", "true"); //enable authentication
		props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
		
                //create Authenticator object to pass in Session.getInstance argument
		Authenticator auth = new Authenticator() {
			//override the getPasswordAuthentication method
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(fromEmail, password);
			}
		};
		Session session = Session.getInstance(props, auth);
		
		sendEmail(session, toEmail,"TLSEmail Testing Subject", "TLSEmail Testing Body");
		
	}
	public static void sendEmail(Session session, String toEmail, String subject, String body){
		try
	    {
	      MimeMessage msg = new MimeMessage(session);
	      //set message headers
	      msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
	      msg.addHeader("format", "flowed");
	      msg.addHeader("Content-Transfer-Encoding", "8bit");

	      msg.setFrom(new InternetAddress("no_reply@journaldev.com", "NoReply-JD"));

	      msg.setReplyTo(InternetAddress.parse("no_reply@journaldev.com", false));

	      msg.setSubject(subject, "UTF-8");

	      msg.setText(body, "UTF-8");

	     // msg.setSentDate(new Date());

	      msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
	      System.out.println("Message is ready");
    	  Transport.send(msg);  

	      System.out.println("EMail Sent Successfully!!");
	    }
	    catch (Exception e) {
	      e.printStackTrace();
	    }
	}
}
