import ballerina/email;

configurable string host = ?;
configurable string username = ?;
configurable string password = ?;

public function main() returns error? {
    // Creates an SMTP client with the provided configuration. The configuration is read from
    email:SmtpClient smtpClient = check new(host, username, password);

    // Defines the email that is required to be sent.
    email:Message email = {
        to: "dilanp@wso2.com",
        cc: "nuvindu@wso2.com",
        bcc: "r.dilanperera@gmail.com",
        subject: "Sample Email",
        body: "This is a sample email."
    };

    // Sends the email.
    check smtpClient->sendMessage(email);
}
