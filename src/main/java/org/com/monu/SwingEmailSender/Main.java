package org.com.monu.SwingEmailSender;

import javax.swing.*;

/**
 * Created On : 2025 29 Aug 5:10 PM
 * Author : Monu Siddiki
 * Description :
 **/
public class Main {
    public static void main(String[] args) {

        SwingUtilities.invokeLater(() -> {
            new EmailSenderUI().setVisible(true);
        });
    }
}
