{-# LANGUAGE GADTs, TypeFamilies, RankNTypes #-}
module HLists where
    data Hlist where
       HNil :: Hlist
       HCons :: a-> Hlist -> Hlist

{-
    showh :: Hlist  -> String
    showh HNil =  ""
    showh (HCons a l) =   show a ++ "," ++  showh l
-}

{-
    main = do
        putStrLn $ show $ HConsShw "123" (HConsShw 1 ( HConsShw 'a' HNil))
        --"123",1,'a',
        putStrLn $ show $ HConsShw "123" (HCons 1 ( HConsShw 'a' HNil))
        --"123",?,'a',
-}