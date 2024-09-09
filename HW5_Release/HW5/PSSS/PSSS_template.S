# Reference: https://www.geeksforgeeks.org/print-sums-subsets-given-set/
.data
.align 4
# =========testcase1===========
arr: .word 5, 4, 3
n: .word 3
str: .string "output: "
space: .string " "
# output: 12 9 8 5 7 4 3 0
# ==============================

# =========testcase2===========
#arr: .word 2, 3
#n: .word 2
#str: .string "output: "
#space: .string " "
# output: 5 2 3 0
# ==============================

.text
.global _start
# Start your coding below, don't change anything upper except testing different testcase

_start:
