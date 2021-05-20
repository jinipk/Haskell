import System.Random 

main = do
 gen <- getStdGen
 putStr $ take 20 (randomRs ('a','z') gen)
 gen2 <- getStdGen
 putStr $ take 20 (randomRs ('a','z') gen2)