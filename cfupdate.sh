#!/bin/sh
toto=$(curl -s "http://ifconfig.me")
#Displays the variable's value
#echo $toto
curl -s -X PUT "https://api.cloudflare.com/client/v4/zones/USE_YOUR_OWN_/dns_records/3402df2ab5USE_YOUR_OWN_870ceb607d" \
     -H "Content-Type:application/json" \
     -H "X-Auth-Email:YOUR_CLOUDFLARE_EMAIL@SOMETHING.CA" \
     -H "X-Auth-Key:c031999c8e14USE_YOUR_OWN_cc37602c7c1c" \
     -H "v1.0-b8907c2e204ee880d470ca92-d407a8e922e658824a771d39027e5b8e010d46255ae8f9cd77d03e3fb10d8b0d95424f46fd234954c996648b55563e1ddbdabb84c4e61b485be26fUSE_YOUR_OWN_57a115" --data '{"type":"A","name":"A_RECORD_.ca","content":"'"$toto"'","ttl":120,"proxied":false}'
