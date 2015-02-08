import Acme.Year
import Criterion.Main

main :: IO ()
main = defaultMain
         [ bench "control"     $ nfIO (return 1234        :: IO Int)
         , bench "currentYear" $ nfIO (return currentYear :: IO Int)
         ]
