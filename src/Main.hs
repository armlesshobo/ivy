module Main (main) where

import Graphics.UI.Gtk
import Graphics.UI.Gtk.Glade
import System.Environment

main :: IO ()
main = do
        args <- getArgs
        showImage . head args 

showImage :: String -> IO ()
showImage []  = do putStrLn "Usage: ivy <image name>"
showImage img = do
                 initGUI 
		 Just xml <- xmlNew "ivy.glade"
		 guiWin   <- xmlGetWidget xml castToWindow "mainWindow"
		 imgVw    <- xmlGetWidget xml castToImage  "imgW"
		 onDestroy guiWin mainQuit
		 widgetShow guiWin
		 mainGUI

