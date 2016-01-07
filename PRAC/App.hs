module PRAC.App where
import PRAC.Utils
import Yesod

--Add config for clubMap, studentData, admin pass, etc.
data App = App { clubM :: ClubMap }

mkYesodData "App" [parseRoutes|
/praClubs HomeR GET
/praClubs/submitted StudentR POST
/praClubs/results ResultR GET
|]

instance Yesod App

instance RenderMessage App FormMessage where
    renderMessage _ _ = defaultFormMessage
