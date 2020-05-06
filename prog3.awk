BEGIN{
	p = 1
	p2 =1
}
{
#the sum of the difference
	p += $3-$4
#the product of the differance
	p2 *= $3-$4
}
END {
	print p
	print p2
}
