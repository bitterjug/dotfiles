import XMonad
import XMonad.StackSet
import XMonad.Util.WorkspaceCompare
import XMonad.Config.Gnome
import XMonad.Actions.CycleWS
import qualified Data.Map as M

-- maximize: move window to next empty ws, and follow it
maximize :: X()
maximize = doTo Next EmptyWS getSortByIndex shiftAndFollow

-- Shift active window to selected workspace, and view it there.
shiftAndFollow :: WorkspaceId -> X ()
shiftAndFollow = windows . (\i -> view i . shift i)

keysToAdd x = 
    [ 
        -- Previous workspace
           (((modMask x .|. controlMask), xK_h), prevWS)
        -- Next workspace
       ,   (((modMask x .|. controlMask), xK_l), nextWS)
        -- 'minimize' to first empty workspace
       ,   ((modMask x, xK_i), shiftTo Next EmptyWS)
        -- 'maximize' to first empty workspace, and view
       ,   (((modMask x .|. controlMask), xK_i), maximize)
        -- move currnet window next and follow it
        ,   ((modMask x, xK_plus), shiftToNext >> nextWS)
        -- move currnet window previous and follow it
       ,   ((modMask x, xK_minus), shiftToPrev >> prevWS)
        -- launch synapse
       ,   ((modMask x, xK_o), spawn "synapse")
    ]


myManagementHooks :: [ManageHook]
myManagementHooks = 
    [  
        resource =? "synapse" --> doIgnore 
    ]

-- add my keys to add to the defaults from gnomeConfig
myKeys x = M.union (keys gnomeConfig x) (M.fromList (keysToAdd x))

-- normal: 
-- focus: #EA6F3D
--
main = do
    xmonad $ gnomeConfig {
        keys = myKeys
        , manageHook = manageHook gnomeConfig 
                    <+> composeAll myManagementHooks
        , normalBorderColor  = "#4F4D46"
        , focusedBorderColor = "#FF4400"
        -- , borderWidth = 2  
    }

