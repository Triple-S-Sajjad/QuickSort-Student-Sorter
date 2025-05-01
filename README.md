# QuickSort Student Score Sorter

This project implements the **QuickSort algorithm** to sort a list of student records by their scores, in **both ascending and descending** order.

## Features
- Sorts students by score from **Low to High** or **High to Low**
- Implemented in **two different programming paradigms**:
  - Python (Imperative)
  - Haskell (Functional)
- Interactive CLI prompt lets users choose sort order

## Programming Languages & Paradigms
| Language | Paradigm       | File Name         |
|----------|----------------|-------------------|
| Python   | Imperative/OOP | `QuickSortDual.py` |
| Haskell  | Functional      | `QuickSortDual.hs`  |

## Algorithm Used
- **QuickSort**: a divide-and-conquer sorting algorithm using recursion and pivot selection.

## How to Run

### Python
1. Make sure you have Python 3 installed.
2. Open terminal and run:
   ```bash
   python QuickSortDual.py
   ```
3. When prompted, enter:
   - `asc` → for ascending order
   - `desc` → for descending order

### Haskell
1. Make sure `GHC` is installed.
2. Compile and run:
   ```bash
   ghc QuickSortDual.hs -o sorter
   ./sorter
   ```
3. Follow the prompt to choose sort order.

## 📄 Example Output
```
Enter 'asc' for ascending or 'desc' for descending sort: desc

Sorted Student Records by Score (High to Low):
Sophie - 95
Zara - 92
Liam - 91
Emily - 89
...
```

## Author
Sajjad Shaik
