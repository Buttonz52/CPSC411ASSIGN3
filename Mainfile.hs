import LexExpr
import ParExpr --import ExprMeta where
--import Language.LBNF.Compiletime
--import Language.LBNF.RunTime
import SkelExpr
import ErrM
import System.Environment

main = do
	args <- getArgs
	conts <- readFile (args!!0)
	let tokens = myLexer conts
    ptree = pExpr tokens
	case ptree of 
	  Ok tree -> do
	    let ast = transExpr tree
		putStrLn $ show ast
	  Bad msg -> putStrLn msg
	putStrLn $ show ptree