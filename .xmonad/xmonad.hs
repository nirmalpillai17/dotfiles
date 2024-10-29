import XMonad
import XMonad.Hooks.DynamicLog

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

myBar = "xmobar"

myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)
myConfig = def
    { terminal    = myTerminal
    , modMask     = myModMask
    , borderWidth = myBorderWidth
    }

myTerminal    = "alacritty"
myModMask     = mod4Mask
myBorderWidth = 3
