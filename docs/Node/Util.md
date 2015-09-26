## Module Node.Util

#### `UTIL`

``` purescript
data UTIL :: !
```

#### `debuglog`

``` purescript
debuglog :: forall a eff. String -> String -> Array a -> Eff (util :: UTIL | eff) Unit
```

#### `format`

``` purescript
format :: forall a eff. String -> Array a -> String
```

#### `inspect`

``` purescript
inspect :: forall a opts eff. a -> {  | opts } -> Eff (util :: UTIL | eff) String
```

#### `log`

``` purescript
log :: forall eff. String -> Eff (util :: UTIL | eff) Unit
```


