module Web.Mail.Users.ConfirmationMail where
import Web.View.Prelude
import IHP.MailPrelude
--import IHP.AuthSupport.Confirm

instance BuildMail (ConfirmationMail User) where
    subject = "Confirm your Account"
    to ConfirmationMail { .. } = Address { addressName = Nothing, addressEmail = user.email }
    from = "someone@example.com"
    html ConfirmationMail { .. } = [hsx|
        Hey,
        just checking it's you...

        <a href={urlTo (ConfirmUserAction user.id confirmationToken)} target="_blank">
            Activate your Account
        </a>
    |]