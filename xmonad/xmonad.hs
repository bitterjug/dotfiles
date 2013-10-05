import XMonad
import XMonad.Config.Gnome
import XMonad.Actions.CycleWS
import qualified Data.Map as M

keysToAdd x = 
    [ 
        -- Previous workspace
            ((modMask x, xK_f), prevWS)
        -- Next workspace
       ,    ((modMask x, xK_g), nextWS)
    ]


myKeys x = M.union (keys gnomeConfig x) (M.fromList (keysToAdd x))

main = do
    xmonad $ gnomeConfig {
        keys = myKeys
    }

