module Node.Util where

import Data.Function

foreign import util ::
  { inspect :: forall a opts. Fn2 a { | opts } String
  }

inspect :: forall a. a -> Boolean -> Int -> String
inspect a showHidden depth = runFn2 util.inspect a { showHidden: showHidden, depth: depth }
