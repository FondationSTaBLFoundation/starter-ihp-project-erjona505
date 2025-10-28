module Web.Controller.Sessions where

import Web.Controller.Prelude
import Web.View.Sessions.New
import qualified IHP.AuthSupport.Controller.Sessions as Sessions
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TLE

instance Controller SessionsController where
    action NewSessionAction = Sessions.newSessionAction @User
    action CreateSessionAction = Sessions.createSessionAction @User
    action DeleteSessionAction = Sessions.deleteSessionAction @User
    action MyAction = do
        let maybeUser = currentUserOrNothing
        case maybeUser of
            Just user -> renderPlain (TLE.encodeUtf8 (TL.fromStrict ("Hello " <> user.email)))
            Nothing -> renderPlain "Please login first"

instance Sessions.SessionsControllerConfig User

updateLoginHistory user = do
    user
        |> modify #logins (\count -> count + 1)
        |> updateRecord
    pure ()
