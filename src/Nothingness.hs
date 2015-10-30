module Nothingness where

f :: Int -> Int
f x = x

z1 = f 1
-- z2 = f 'a' -- ok, doesn't compile
wtf' = f undefined -- compiles! essentially "null", but not really null, here you have only one bottom, with null you have bottom and null.


data Empty

k = undefined :: Empty

g :: Empty -> Int
g x = 1

-- g2= g 2 -- ok, doesn't compile
wtf2 = g undefined -- compiles :)
--necesary evil because any call can non-terminate?
