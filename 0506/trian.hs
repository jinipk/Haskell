import System.IO

main = do
    putStrLn "The base?"
    base <- getLine
    putStrLn "The height?"
    height <- getLine
    putStrLn ("The area of that triangle is " ++  show ((read height * read base) /2))