{-# LANGUAGE DeriveFunctor #-}
module Lib
    ( someFunc
    ) where

import Graphics.Gloss.Interface.Pure.Game
import Control.Comonad
import Control.Monad
import Control.Monad.Trans
import Control.Monad.Identity
import Control.Applicative

someFunc :: IO ()
someFunc = play
  (InWindow "GameOfLife" (500, 500) (0, 0))
  white -- background color
  30 -- steps per second
  () -- model
  (\_ -> Blank) -- function from model to picture
  (\_ -> id) -- function for handling events
  (\f -> id) -- function for evolving through time

