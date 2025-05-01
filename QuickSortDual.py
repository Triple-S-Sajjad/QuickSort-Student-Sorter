# This script lets you sort a list of students by their scores
# You can choose whether to sort from low to high or high to low

# Each student is a dictionary with a name and a score
students = [
    {"name": "Ali", "score": 85},
    {"name": "Zara", "score": 92},
    {"name": "John", "score": 78},
    {"name": "Emily", "score": 89},
    {"name": "Sophie", "score": 95},
    {"name": "Mike", "score": 67},
    {"name": "Nina", "score": 88},
    {"name": "Omar", "score": 73},
    {"name": "Liam", "score": 91},
    {"name": "Bella", "score": 82}
]

# This is our QuickSort function.
# It works by picking a pivot and splitting the list into two parts:
# one with lower (or higher) scores, depending on the order you choose
def quicksort(arr, descending=False):
    if len(arr) <= 1:
        return arr  # Base case: empty or single-item list is already sorted

    pivot = arr[0]  # We choose the first student as the pivot

    # For descending order (high to low)
    if descending:
        left = [x for x in arr[1:] if x["score"] >= pivot["score"]]
        right = [x for x in arr[1:] if x["score"] < pivot["score"]]
    # For ascending order (low to high)
    else:
        left = [x for x in arr[1:] if x["score"] <= pivot["score"]]
        right = [x for x in arr[1:] if x["score"] > pivot["score"]]

    # Recursively sort the left and right halves and combine them
    return quicksort(left, descending) + [pivot] + quicksort(right, descending)

# Ask the user how they want to sort the list
order = input("Enter 'asc' for ascending or 'desc' for descending sort: ").strip().lower()

# Run the appropriate sort based on input
if order == "desc":
    sorted_students = quicksort(students, descending=True)
    print("\nSorted Student Records by Score (High to Low):")
else:
    sorted_students = quicksort(students)
    print("\nSorted Student Records by Score (Low to High):")

# Print out the final sorted list
for student in sorted_students:
    print(f"{student['name']} - {student['score']}")