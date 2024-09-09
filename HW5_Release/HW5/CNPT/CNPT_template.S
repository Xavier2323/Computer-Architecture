# Reference: https://www.geeksforgeeks.org/find-number-of-triangles-possible/
.data
.align 4
# ==================testcase1=========================
arr: .word 10, 21, 22, 100, 101, 200, 300
n: .word 7
str1: .string "output: "
str2: .string "Total number of triangles possible is "
# output: Total number of triangles possible is 6
# ====================================================

# =================testcase2==========================
#arr: .word 4, 6, 3, 7
#n: .word 4
#str1: .string "output: "
#str2: .string "Total number of triangles possible is "
# output: Total number of triangles possible is 3
# ====================================================

.text
.global _start
# Start your coding below, don't change anything upper except testing different testcase

_start:
   