BEGIN{
	arr[10]
	}
{
	arr[$3] += $4
	}
END{
	for(u in arr) 
	{
		print u, arr[u]
	}
}
