import Acme.Year
import Data.Time

main :: IO ()
main = do
    t <- getZonedTime
    let (y, _, _) = (toGregorian . localDay . zonedTimeToLocalTime) t
    True <- return (y == fromIntegral currentYear)
    return ()
