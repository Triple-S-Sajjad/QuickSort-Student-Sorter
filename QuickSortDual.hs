-- This Haskell program lets you sort students by their scores.
-- It asks you whether you want to sort from low to high or high to low.

import System.IO (hFlush, stdout)

-- We define a student as a (name, score) pair
type Student = (String, Int)

-- Here's a list of 10 sample students
students :: [Student]
students =
  [ ("Ali", 85), ("Zara", 92), ("John", 78), ("Emily", 89)
  , ("Sophie", 95), ("Mike", 67), ("Nina", 88), ("Omar", 73)
  , ("Liam", 91), ("Bella", 82)
  ]

-- QuickSort in ascending order (Low to High scores)
quicksortAsc :: [Student] -> [Student]
quicksortAsc [] = []  -- Base case: nothing to sort
quicksortAsc (x:xs) =
  let
    -- Students with scores <= pivot
    smallerOrEqual = [s | s <- xs, snd s <= snd x]
    -- Students with scores > pivot
    larger         = [s | s <- xs, snd s >  snd x]
  in quicksortAsc smallerOrEqual ++ [x] ++ quicksortAsc larger

-- QuickSort in descending order (High to Low scores)
quicksortDesc :: [Student] -> [Student]
quicksortDesc [] = []  -- Base case: nothing to sort
quicksortDesc (x:xs) =
  let
    -- Students with scores >= pivot
    greaterOrEqual = [s | s <- xs, snd s >= snd x]
    -- Students with scores < pivot
    less           = [s | s <- xs, snd s <  snd x]
  in quicksortDesc greaterOrEqual ++ [x] ++ quicksortDesc less

-- Main function that asks user for sort order and displays result
main :: IO ()
main = do
  putStr "Enter 'asc' for ascending or 'desc' for descending sort: "
  hFlush stdout  -- Makes sure prompt shows before input
  order <- getLine  -- Read user input

  -- Decide which sort to use
  let sorted = case order of
        "desc" -> quicksortDesc students
        _      -> quicksortAsc students

  putStrLn "\nSorted Student Records:"
  -- Print each student's name and score
  mapM_ (\(name, score) -> putStrLn $ name ++ " - " ++ show score) sorted
