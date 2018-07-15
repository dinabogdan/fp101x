import Prelude hiding ((^))

-- wrong. the final result will be 0
m ^ 0 = 0
m ^ n = m * m ^ (n-1)

-- Correct
m ^ 0 = 1
m ^ n = m * m ^ (n-1)

-- Wrong. I think it's going into stackoverflow
m ^ 0 = 1
m ^ n = m * m ^ n - 1

-- wrong
m ^ 0 = 1
m ^ n = n * n ^ (m-1)

-- Correct
m ^ 0 = 1

m ^ n = m * (^) m (n - 1)
--wrong
m ^ 0 = 1
m ^ n = (m * m) ^ (n-1)
