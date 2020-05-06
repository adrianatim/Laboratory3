BEGIN {
	m=0
	w=0
}

#The sapce at the begining of the regular expressions is for not matching the last name 
$5 ~ / [a-zA-Z]*[b-z]\>/ {
	m++
}
$5 ~ / [a-zA-Z]*a\>/ {
	w++
}
END {
	print "Nr of male is: ", m
	print "Nr of woman is: ", w
}
	

