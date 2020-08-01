--At a job interview, you are challenged to write an algorithm to check if a
--given string, s, can be formed from two other strings, part1 and part2.
--
--The restriction is that the characters in part1 and part2 should be in the
--same order as in s.
--
--The interviewer gives you the following example and tells you to figure out
--the rest from the given test cases.
--
--For example:
--
--'codewars' is a merge from 'cdw' and 'oears':
--
--    s:  c o d e w a r s   = codewars
--part1:  c   d   w         = cdw
--part2:    o   e   a r s   = oears

module Katas.MergeChecker (isMerge) where

isMerge :: String -> String -> String -> Bool
isMerge x  y  [] = x == y
isMerge x  []  z = x == z
isMerge [] _   _ = False
isMerge (x:xs) part1@(y:ys) part2@(z:zs) =
  x == y && isMerge xs ys part2
         || isMerge xs part1 zs
