import Acme.Year
import Criterion.Main

main :: IO ()
main = defaultMain
         [ bench "control"     (return 1234        :: IO Int)
         , bench "currentYear" (return currentYear :: IO Int)
         ]
