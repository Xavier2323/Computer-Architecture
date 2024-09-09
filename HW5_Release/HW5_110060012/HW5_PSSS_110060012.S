# Reference: https://www.geeksforgeeks.org/print-sums-subsets-given-set/
.data
.align 4
# =========testcase1===========
# arr: .word 5, 4, 3
# n: .word 3
# str: .string "output: "
# space: .string " "
# output: 12 9 8 5 7 4 3 0
# ==============================

# =========testcase2===========
arr: .word 2, 3
n: .word 2
str: .string "output: "
space: .string " "
# output: 5 2 3 0
# ==============================

.text
.global _start
# Start your coding below, don't change anything upper except testing different testcase

_start:
	# print str
	la a0, str
    li a7, 4
    ecall
    
	# setup initial value
	la a1, arr # a1 = arr[0] (arr)
	addi a2, x0, 0 # a2 = 0 (l)
	lw a3, n # a3 = n(r)
	addi a4, x0, 0 # a4 = 0 (sum)
	jal ra, subsetSums # call subsetSums
	j end # jump to end

subsetSums:
	bge a2, a3, print # if (l > r) print 
	addi sp, sp, -16 # create space
	sd ra, 0(sp) # save return address
	sw a2, 8(sp) # save l
	sw a4, 12(sp) # save sum

	slli t0, a2, 2 
	add t1, t0, a1 # RAW
	lw  t2, 0(t1) # get arr[l] # RAW

	add a4, a4, t2 # sum + arr[l] # Load RAW
	addi a2, a2, 1 # l + 1
	jal ra, subsetSums # subsetSums(arr, l + 1, r, sum + arr[l]) 

	ld ra, 0(sp)
	lw a2, 8(sp)
	lw a4, 12(sp)

	addi a2, a2, 1 # l + 1 # Load RAW
	jal ra, subsetSums # subsetSums(arr, l + 1, r, sum)
	
	ld ra, 0(sp)
	lw a2, 8(sp)
	lw a4, 12(sp)
	
	addi sp, sp, 16
	jr ra

print:
	mv a0, a4 
	li a7, 1
	ecall # print sum
	la a0, space
	li a7, 4
	ecall # print " "
	jr ra # return 

end:nop
