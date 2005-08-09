{-# OPTIONS_GHC -fglasgow-exts #-}

module PIL where
import PIL.Val
import PIL.Pad
import PIL.Syn
import PIL.PIL
import PIL.Parser
import PIL.Monads
import PIL.Internals

-- Beginning of design of PIL2.

-- Goal: To make explicit the flow of types, after parsing and
-- before type erasure.

-- Goal: To unify Binding (Let) and Apply as the two verbs.

-- Goal: To introduce all symbols at beginning of Scope.

-- Goal: To facilitate separate compilation by exposing a link set
-- to the consuming module.  This starts from the file scope "main",
-- which we shall specify as a Code node that does not perform bindings.
-- A PPos annotator still works on any node whatsoever.

-- Goal: To allow runtime rebinding into different types, but check
-- the types at compile time and raise warnings nevertheless!

-- File is simply a toplevel code literal plus a set of external
-- visible linkset information.

main :: IO ()
main = do
    putStrLn "*** Welcome to PIL2 REPL, the Pugs Again Shell!"
    putStrLn "*** Please enter expressions, or :q to exit."
    fix $ \redo -> do
        putStr "pugs> "
        src <- getLine
        if (src == ":q") then return () else do
        print "==> Parse Tree <=="
        syn <- runM $ parse src
        print syn
        print "==> PIL Tree <=="
        pil <- runM $ compile syn
        print pil
        print "==> Decompiled Source <=="
        print $ pretty pil
        print "==> Run! <=="
        val <- runM $ interpret pil
        print val
        redo

print1 :: String
print1 = "print 1"

-- prelude -- initial (lexical!) environment.

-- Compilation could be pure... we'll see.
compile :: Syn -> Compile PIL
compile = undefined

-- Pretty is pure and needs no monad.
pretty :: PIL -> String
pretty = undefined

-- Eval is pretty much all about side effects.
interpret :: PIL -> Eval Val
interpret = undefined

