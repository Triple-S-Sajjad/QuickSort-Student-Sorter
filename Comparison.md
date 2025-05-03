## Detailed Comparison Between Python and Haskell Implementations

| Feature / Concept              | Python (Imperative)                                          | Haskell (Functional)                                            |
|--------------------------------|--------------------------------------------------------------|-----------------------------------------------------------------|
| 1. **Programming Paradigm**    | Imperative (step-by-step instructions)                       | Functional (expression-based logic)                             |
| 2. **Typing System**           | Dynamically typed                                            | Statically typed                                                |
| 3. **Function Structure**      | Explicit `if-else`, list comprehensions, and recursion       | Pattern matching, pure recursion, list comprehension            |
| 4. **Variable Mutability**     | Variables can be reassigned (mutable)                        | All variables are immutable by default                          |
| 5. **Pivot Logic**             | Chosen manually (first element), reused with conditions      | Uses pattern matching and guards for partitioning               |
| 6. **Syntax Simplicity**       | More readable and natural-language-like                      | More concise but can be harder for beginners                    |
| 7. **Runtime Input Handling**  | Uses `input()` for user interaction                          | Uses `getLine` and `IO` monad for safe input/output             |
| 8. **Execution Model**         | Executes line-by-line, top-down                              | Evaluated lazily, only when values are needed                   |
| 9. **Error Handling**          | Errors at runtime (type issues can go unnoticed)             | Most errors caught at compile time due to static types          |
|10. **Use Case Readability**    | Clearer for real-world logic and scripting                   | Better suited for algorithm-heavy, math-like computations       |

---

### Summary

Although both implementations perform the same QuickSort logic, the underlying mindset is different. Python focuses on **how** the algorithm works step-by-step, while Haskell focuses on **what** the result should be. This contrast highlights how the same problem is solved differently across paradigms, making the project a valuable learning experience.
