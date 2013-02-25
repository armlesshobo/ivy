module Main (main) where

import Graphics.UI.Gtk
import System.Environment

main :: IO ()
main = do
	args <- getArgs
	initGUI
	guiWin <- windowNew
	windowSetDefaultSize guiWin 600 400
	scrWin <- scrolledWindowNew Nothing Nothing
	imgVw  <- imageNewFromFile $ head args
	scrolledWindowAddWithViewport scrWin imgVw
	containerAdd guiWin scrWin
	onDestroy guiWin mainQuit
	widgetShowAll guiWin
	mainGUI
