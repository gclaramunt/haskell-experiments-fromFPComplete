module Combinations where
    combinations:: String -> [String]
    combinations []  =  []
    combinations (x:xs) =  [x] :  combinations xs ++ fmap (x :) (combinations xs)