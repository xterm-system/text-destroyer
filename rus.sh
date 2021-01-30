if [[ -n $1 ]]; then
	echo Начинаем уничтожение...
	echo '' > $1
	times=0
	fles=( [0]="ambarcinema" [1]="spaces" [2]="youtube" [3]="vk" )
	echo -e "\e[1mДля остановки нажмите Ctrl+Z"
	while :
	do
		if [[ -f $1 ]]; then
		echo "$(cat ./${fles[$(shuf -i 0-3 -n 1)]})" >> $1
		let times=times+1
		echo Успешная попытка N$times в $(date)
		else
		echo "Провальная попытка N$times в $(date): Не удалось найти файл $1"
		fi
	done
else
	echo Нет имени файла
fi
