myAbs n = if n >= 0 then n else -n

getSignum x = if x <0 then -1 else
              if x == 0 then 0 else 1

guardedAbs x | x >=0     = x
             | otherwise = -x

guardedSignum x | x<0       = -1
                | x==0      = 0
                | otherwise = 1
