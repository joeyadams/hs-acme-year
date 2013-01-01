module Acme.Year (
    currentYear,
) where

import Data.Version
import Paths_acme_year

-- | The current year (e.g. @2013@)
currentYear :: Int
currentYear =
    case versionBranch version of
        []    -> error "This package is timeless"
        (a:_) -> a
