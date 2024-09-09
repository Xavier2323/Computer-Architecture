# Refernce : https://practice.geeksforgeeks.org/problems/minimum-number-of-jumps-1587115620/1?page=1&difficulty[]=1&category[]=Arrays&sortBy=submissions
.data
.align 4


# ==============testcase1==============
n: .word 6
arr: .word 1, 4, 3, 2, 6, 7
str: .string "output: "
# output: 2
# =====================================

# ==============testcase2==============
#n: .word 11
#arr: .word 1, 3, 5, 8, 9, 2, 6, 7, 6, 8, 9
#str: .string "output: "
# output: 3
# =====================================

.text
.global _start
# Start your coding below, don't change anything upper except testing different testcase
_start:
