module Node.Util where

import Control.Monad.Eff
import Data.Function
import Prelude

foreign import data UTIL :: !

foreign import debuglog :: forall a eff. String -> String -> Array a -> Eff (util :: UTIL | eff) Unit

foreign import format :: forall a eff. String -> Array a -> String

foreign import inspect :: forall a opts eff. a -> { | opts } -> Eff (util :: UTIL | eff) String

foreign import log :: forall eff. String -> Eff (util :: UTIL | eff) Unit
