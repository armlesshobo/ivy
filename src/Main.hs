module Main (main) where

import Graphics.UI.Gtk;
import Graphics.UI.Gtk.Glade;

main :: IO ()
main = do
	initGUI 
        Just xml <- xmlNew "ivy.glade"
        guiWin   <- xmlGetWidget xml castToWindow "mainWindow"
        imgVw    <- xmlGetWidget xml castToImage  "imgW"
        onDestroy guiWin mainQuit
	widgetShow guiWin
        mainGUI
