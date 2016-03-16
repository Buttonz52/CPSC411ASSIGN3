module Main where

import LexAssignment
import ParAssignment 
import SkelAssignment
import ErrM
import System.Environment

main = do
    args <- getArgs
    let conts = args !! 0
    fconts <- readFile conts
    let tokens = myLexer conts
    let ptree = pProg tokens
    case ptree of 
        Ok tree -> do
            let ast = transProg tree
            putStrLn $ show ast
        Bad msg -> putStrLn msg