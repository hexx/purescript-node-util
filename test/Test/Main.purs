module Test.Main where

import qualified Control.Monad.Eff.Console as Console
import Prelude

import Node.Util
import Test.Assert

main = do
  Console.log "Testing debuglog"
  debuglog "hogeika" "hello: %d" [123]

  Console.log "Testing format"
  assert $ "123" == format "%d" [123]

  Console.log "Testing inspect"
  s <- inspect { name: "hogeika", age: 13 } {}
  assert $ "{ name: 'hogeika', age: 13 }" == s

  Console.log "Testing log"
  log "hogeika"
