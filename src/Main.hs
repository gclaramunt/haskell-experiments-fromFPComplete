-- | Main entry point to the application.
module Main where
    import HLists
    import Combinations
    -- | The main entry point.
    main :: IO ()
    main = do
        putStrLn $ show $ combinations "abc"
        putStrLn $ show $ combinations "ab"
        putStrLn $ show $ combinations "a"
        --putStrLn $ show $ HConsShw "123" (HConsShw 1 ( HConsShw 'a' HNil))
        -- putStrLn $ show $ HConsShw "123" (HCons 1 ( HConsShw 'a' HNil))
        -- putStrLn $ show $ fiddle [1..1000000000000000000]
        putStrLn "Welcome to FP Haskell Center!"
        putStrLn "Have a good day!"
        putStrLn $ show $ middle [1]
        putStrLn $ show $ middle [1,2]
        putStrLn $ show $ middle [1,2,3]
        putStrLn $ show $ middle [1,2,3,4]
        putStrLn $ show $ middle [1,2,3,4,5]
        putStrLn $ show $ middle [1,2,3,4,5,11,21,31,41,51]

    middle :: [a] -> a
    middle [x] = x
    middle [x,y] = x
    middle l = middle' l l

    middle' :: [a] -> [a] -> a
    middle' [] (x:l) = x
    middle' [_] (x:l) = x
    middle' (_:_:hare) (_:tortoise) = middle' hare tortoise

    fiddle :: [Int] -> Int
    fiddle [] = 1
    fiddle (x:xs) =  x+fiddle xs

    -- ping [] = pong []
    -- ping (x:xs) = xs


