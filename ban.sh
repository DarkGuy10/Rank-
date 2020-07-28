x=`echo 'AGsg4SKKs74s62sdf' | sed 's/./&\n/g' | shuf | tr -d "\n"`
auth="" # Fill in the blank with your Auth Header, Dm me if u dunno what it is or where to find it
for (( i = 0; i <= 10000000; i++ )); do
	nam="$x$i" 
	curl 'https://discord.com/api/v6/channels/676299660687573006/messages' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' -H 'Accept: */*' -H 'Accept-Language: en-US' --compressed -H 'Content-Type: application/json' -H 'Authorization: '$auth''  -H 'Origin: https://discord.com' -H 'Connection: keep-alive' -H 'Referer: https://discord.com/channels/642924314764771340/676299660687573006' -H 'TE: Trailers' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' --data-raw '{"content":"bliNK","nonce":"'$nam'","tts":false}' -o .logasd
	msgID=`cat .logasd | cut -d'"' -f4`
	curl 'https://discord.com/api/v6/channels/676299660687573006/messages/'$msgID'' -X DELETE -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' -H 'Accept: */*' -H 'Accept-Language: en-US' --compressed -H 'Authorization: '$auth''  -H 'Origin: https://discord.com' -H 'Connection: keep-alive' -H 'Referer: https://discord.com/channels/642924314764771340/676299660687573006' -H 'TE: Trailers'
done
