if [[ -n $1 ]]; then
	echo Starting destroy...
        '' > $1
	times=0
	fles=( [0]="ambarcinema" [1]="spaces" [2]="youtube" [3]="vk" )
	echo -e "\e[1mClick Ctrl+Z to stop"
	while :
	do
		if [[ -f $1 ]]; then
		echo "$(cat ./${fles[$(shuf -i 0-3 -n 1)]})" >> $1
		let times=times+1
		echo "Successful attempt N$times in $(date)"
		else
		echo "Bad attempt N$times in $(date): Couldn\'t find file $1"
		fi
	done
else
	echo No filename
fi
