package org.com.monu.SwingEmailSender;

/**
 * Created On : 2025 29 Aug 4:58 PM
 * Author : Monu Siddiki
 * Description :
 **/
public class Email {

    private String sender;
    private String receiver;
    private String subject;
    private String message;

    public Email(String sender, String receiver, String subject, String message) {
        this.sender = sender;
        this.receiver = receiver;
        this.subject = subject;
        this.message = message;
    }

    public String getSender() {
        return sender;
    }

    public String getReceiver() {
        return receiver;
    }

    public String getSubject() {
        return subject;
    }

    public String getMessage() {
        return message;
    }
}
