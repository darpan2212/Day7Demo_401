for ((cnt=0;cnt<10;cnt++))
do
	arr[$cnt]=$((RANDOM%901 + 100));
done

echo 'Original Array -> '${arr[@]};

for ((i=0;i<${#arr[@]};i++))
do
	for((j=i+1;j<${#arr[@]};j++))
	do
		if [ ${arr[i]} -gt ${arr[j]} ]
		then
			temp=${arr[i]};
			arr[$i]=${arr[j]};
			arr[$j]=$temp;
		fi
	done
done

echo 'Sorted Array -> '${arr[@]}
