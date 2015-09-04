module Test.Main where

import Control.Monad.Eff.Console
import Prelude

import Node.Util

main = do
  log $ inspect (\a -> a) true 1
