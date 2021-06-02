module Main where

import Control.Monad (replicateM_) 

import Graphics.WorldTurtle

main :: IO ()
main = runWorld $ do
  -- 출발하는 방향과 시작점
  t1 <- makeT 0  black
  t2 <- makeT 90 blue
  t3 <- makeT 180 red
  t4 <- makeT 270 green

-- 실행부분
  replicateM_ 18 $ loop t1 <|> loop t2 <|> loop t3 <|> loop t4

  where makeT r c = do -- 생성과 스피드 조절
          t <- makeTurtle' (0, 0) r c
          t >/> setSpeed 300
          return t

-- 방향을 왼쪽으로 약간씩 움직이라고 하는 부분 
loop :: Turtle -> WorldCommand() 
loop = run $ circle 90 >> left 5
