# Ballerina SMTP Send Mail Sample Demo

This sample Ballerina program demonstrates how to send an email using the Ballerina `email` module via an SMTP server. 

## Prerequisites

- Ballerina Swan Lake installed
- An SMTP server (e.g., Gmail SMTP server)
- SMTP server credentials (host, username, and password)

## Cloning the Repository

Clone the repository to get the sample Ballerina project:

```bash
git clone https://github.com/RDPerera/ballerina-smtp-demo
cd ballerina-smtp-demo
```

## Configuration

Before running the program, you need to provide the necessary configuration values. You can set these configurations in the `Config.toml` file.

Create a `Config.toml` file in the same directory as your Ballerina program with the following content:

```toml
host = "<SMTP_SERVER_HOST>"
username = "<SMTP_USERNAME>"
password = "<SMTP_PASSWORD>"
```

Replace the placeholders with your actual SMTP server details:

- `<SMTP_SERVER_HOST>`: The host address of your SMTP server (e.g., `smtp.abc.com`).
- `<SMTP_USERNAME>`: Your SMTP server username (usually your email address).
- `<SMTP_PASSWORD>`: Your SMTP server password or application-specific password.

If you are using Gmail's SMTP server, refer to the [How to Get Gmail SMTP Config for Your Gmail](/resources/GmailSMTPConfigs.md) guide.

## Email Details

You can customize the email details directly in the Ballerina program:

```ballerina
import ballerina/email;

configurable string host = ?;
configurable string username = ?;
configurable string password = ?;

public function main() returns error? {
    // Creates an SMTP client with the provided configuration.
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
```

In the above program, you can modify the following fields to suit your needs:

- `to`: The recipient's email address.
- `cc`: The email addresses to be included in the carbon copy.
- `bcc`: The email addresses to be included in the blind carbon copy.
- `subject`: The subject of the email.
- `body`: The body content of the email.

## Running the Program

To run the program, navigate to the directory containing your Ballerina file and `Config.toml` file, and execute the following command:

```bash
bal run
```
