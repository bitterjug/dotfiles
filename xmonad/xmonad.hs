import XMonad
import XMonad.Config.Gnome
import XMonad.Actions.CycleWS
import qualified Data.Map as M

keysToAdd x = 
    [ 
        -- Previous workspace
           (((modMask x .|. controlMask), xK_h), prevWS)
        -- Next workspace
       ,   (((modMask x .|. controlMask), xK_l), nextWS)
    ]


-- add my keys to add to the defaults from gnomeConfig
myKeys x = M.union (keys gnomeConfig x) (M.fromList (keysToAdd x))

main = do
    xmonad $ gnomeConfig {
        keys = myKeys
    }

