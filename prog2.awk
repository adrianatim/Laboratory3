BEGIN {
	sum=0
}
#the sum of the numbers
{
	sum += $3
}
END {
	print sum
}
