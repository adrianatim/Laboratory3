BEGIN{ 
	sum=0	
}
{
	i=1
	while(i <= NF)
	{
		sum= sum + $i;
		i = i + 1;
	}
}
END{ print sum}
