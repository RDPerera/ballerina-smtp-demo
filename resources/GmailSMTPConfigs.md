# How to Get Gmail SMTP Config for Your Gmail

To use Gmail's SMTP server, you'll need to enable some settings and obtain specific configuration details. Follow these steps:

## Step 2: Enable "2-Step Verification" and Create an App Password

For added security, it is recommended to use an App Password:

1. Go to your Google Account: [My Account](https://myaccount.google.com/)
2. Select `Security` from the left sidebar.
![My Account](/resources/doc-images/account.png)
3. Under `Signing in to Google`, select `2-Step Verification` and set it up.
4. After enabling 2-Step Verification, go back to `Security`.
![2-Step Verification](/resources/doc-images/2factor.png)
5. Search for `App passwords` and click on it.
![App Passwords](/resources/doc-images/app-passswords.png)
6. provide a app name and click on `Create`.
![Generate App Password](/resources/doc-images/app-name.png)
7. Copy the generated app password.
![Copy App Password](/resources/doc-images/password.png)
8. Use the generated app password as the SMTP password in your `Config.toml`.

## Gmail SMTP Configuration

Use the following configuration details for your `Config.toml`:

```toml
host = "smtp.gmail.com"
username = "your.email@gmail.com"
password = "your_app_password"
```

Host will be `smtp.gmail.com` for Gmail's SMTP server.You need to replace `your.email@gmail.com` with your Gmail address and `your_app_password` with the app password you generated.Not need to provide a port in the `smtpConfig` section. With these settings, you should be able to send emails using Gmail's SMTP server through your Ballerina application.