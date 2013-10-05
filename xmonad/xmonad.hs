import XMonad
import XMonad.Config.Gnome
import qualified Data.Map as M

keysToAdd x = 
    [ ]


myKeys x = M.union (keys gnomeConfig x) (M.fromList (keysToAdd x))

main = do
    xmonad $ gnomeConfig {
        keys = myKeys
    }

