package vn.edu.nlu.fit.Auth;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

public class ChangepassEmail {
    public static void sendEmail(String host, String port,
                                 final String userName, final String password, String toAddress,
                                 String first_name, String last_name, String key) throws AddressException,
            MessagingException {

        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(userName, password);
            }
        };

        Session session = Session.getInstance(properties, auth);

        // creates a new e-mail message
        Message msg = new MimeMessage(session);

        msg.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        String sub = "Hello " +last_name + first_name;

        msg.setSubject(sub);
        msg.setSentDate(new Date());



        msg.setContent("<a href=\"http://localhost:8080/MilkTeaShop/DoConfirmChangePass?key="+key+"\">Click Here</a>","text/html");

        // sends the e-mail
        Transport.send(msg);

    }
}
