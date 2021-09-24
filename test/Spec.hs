{-# LANGUAGE BlockArguments #-}

module Main where

import Test.Hspec

main :: IO ()
main = hspec $
    describe "haskell-gitpod-template" do
        it "should be AOK" do
            1 `shouldBe` 1