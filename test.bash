#!/bin/bash

error () {
	echo "$1" >&2
	exit 1
}

# 値が正しいか確認
[ $(./15745108 20 12) -eq 4 ] || error "ERROR1" 
[ $(./15745108 30 12) -eq 6 ] || error "ERROR2" 
[ $(./15745108 45 12) -eq 3 ] || error "ERROR3" 

# 終了ステータスが0で終わるか確認
./15745108 45 12 > /dev/null || error "ERROR"

echo OK

exit 0
