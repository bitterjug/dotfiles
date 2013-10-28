import Data.List (isInfixOf)
import XMonad
import XMonad.StackSet
import XMonad.Util.WorkspaceCompare
import XMonad.Config.Gnome
import XMonad.Actions.CycleWS
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Prompt.Window
import XMonad.Prompt
import qualified Data.Map as M

-- maximize: move window to next empty ws, and follow it
maximize :: X()
maximize = doTo Next EmptyWS getSortByIndex shiftAndFollow

-- Shift active window to selected workspace, and view it there.
shiftAndFollow :: WorkspaceId -> X ()
shiftAndFollow = windows . (\i -> view i . shift i)


-- Prompts need a big font so I can see them
myXPConfig  :: XPConfig
myXPConfig  = defaultXPConfig { 
        -- font = "-*-avant garde gothic-demi-r-*-*"
        font = "xft:Profont:pixelsize=15:autohint=true"
        ,   height = 30
        -- more fuzzy searching, match anywhere
        ,   searchPredicate = isInfixOf
        -- always highlight a result, so I can hit enter any time
        ,   alwaysHighlight = True
    }

keysToAdd x = 
    [ 
        -- Close window
       ((modMask x, xK_F4), kill)
        -- Next (non-empty) workspace
       ,   (((modMask x .|. controlMask), xK_l), moveTo Next NonEmptyWS)
       ,   ((modMask x, xK_grave), moveTo Next NonEmptyWS)
       ,   ((mod4Mask, xK_Tab), moveTo Next NonEmptyWS)
        -- Previous (non-empty) workspace
       ,   (((modMask x .|. controlMask), xK_h), moveTo Prev NonEmptyWS)
       ,   (((modMask x .|. shiftMask), xK_grave), moveTo Prev NonEmptyWS)
       ,   (((mod4Mask .|. shiftMask), xK_Tab), moveTo Prev NonEmptyWS)
        -- 'minimize' to first empty workspace
       ,   ((modMask x, xK_i), shiftTo Next EmptyWS)
        -- 'maximize' to first empty workspace, and view
       ,   (((modMask x .|. controlMask), xK_i), maximize)
        -- View/goto first empty workspace
       ,   (((modMask x .|. shiftMask), xK_i), moveTo Next EmptyWS)
        -- move currnet window next and follow it
       ,   (((modMask x .|. shiftMask .|. controlMask), xK_l), shiftToNext >> nextWS)
        -- move currnet window previous and follow it
       ,   (((modMask x .|. shiftMask .|. controlMask), xK_h), shiftToPrev >> prevWS)
        -- launch synapse
       ,   ((modMask x, xK_o), spawn "synapse")
       -- goto/bring window with Alt-(shift)-X
       ,   (((modMask x .|. shiftMask), xK_x), windowPromptBring myXPConfig)
       ,   ((modMask x, xK_x), windowPromptGoto myXPConfig)
    ]

myManagementHooks :: [ManageHook]
myManagementHooks = 
    [  
        resource =? "synapse" --> doIgnore,
        resource =? "Do"      --> doIgnore
    ]

-- Add my keys to add to the defaults from gnomeConfig
myKeys x = M.union (keys gnomeConfig x) (M.fromList (keysToAdd x))

-- Border colours
darkGray = "#4F4D46" 
ubuntuOrange = "#FF4400" 

main = do
    xmonad $ gnomeConfig {
        keys = myKeys
        , manageHook = manageHook gnomeConfig 
                    <+> composeAll myManagementHooks
        , layoutHook = smartBorders $ layoutHook gnomeConfig
        , normalBorderColor  = darkGray
        , focusedBorderColor = ubuntuOrange
        -- , borderWidth = 2  
    }

