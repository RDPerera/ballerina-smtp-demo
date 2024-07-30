import ballerina/email;

configurable string host = ?;
configurable string username = ?;
configurable string password = ?;
configurable email:SmtpConfiguration smtpConfig = ?;

public function main() returns error? {
    // Creates an SMTP client with the provided configuration. The configuration is read from
    email:SmtpClient smtpClient = check new (
        host,
        username,
        password,
        smtpConfig
    );

    // Defines the email that is required to be sent.
    email:Message email = {
        to: "to@email.com",
        cc: "cc@email.com",
        bcc: "bcc@email.com",
        subject: "Sample Subject",
        body: "This is a sample email."
    };

    // Sends the email.
    check smtpClient->sendMessage(email);
}
