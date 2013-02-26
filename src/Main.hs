module Main (main) where

import Graphics.UI.Gtk
import System.Environment

main :: IO ()
main = do
	args <- getArgs
        showImage $ processArgs args

processArgs :: [String] -> Maybe String
processArgs (arg:[]) = Just arg
processArgs _ = Nothing

showImage :: Maybe String -> IO ()
showImage Nothing = putStrLn "Usage: ivy <image_name>"
showImage (Just imgFile) = do
                        initGUI
			guiWin <- windowNew
			windowSetDefaultSize guiWin 600 400
			scrWin <- scrolledWindowNew Nothing Nothing
			imgVw  <- imageNewFromFile imgFile
			scrolledWindowAddWithViewport scrWin imgVw
			containerAdd guiWin scrWin
			onDestroy guiWin mainQuit
			widgetShowAll guiWin
			mainGUI
