module HelloWorld where

-- https://www.hackerrank.com/challenges/fp-hello-world/problem

main :: IO ()
main = interact helloWorld

helloWorld :: String -> String
helloWorld = const "Hello World"