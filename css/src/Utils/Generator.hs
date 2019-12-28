module Utils.Generator where

import           Clay
import qualified Data.Text.Lazy.IO as TL
import qualified Global

run :: IO ()
run = produce "../static/css"
    [ "global" =: Global.css
    ]

(=:) :: a -> b -> (a, b)
(=:) = (,)

produce :: String -> [(String, Css)] -> IO ()
produce dist = mapM_ $ \(styleName, css) -> do
    let fileName = styleName <> ".css"
    TL.writeFile (dist <> "/" <> fileName) $ render css
    putStrLn $ "Generated: " <> fileName
