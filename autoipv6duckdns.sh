#Presented to you by Abhishek Sinha
#Fully Automation of ipv6 address update to DUCKDNS

#ipv4 address variable
ipv4add=$(curl --ipv4 https://gtwy.net/ip/)

#ipv6 address variable
ipv6add=$(curl --ipv6 https://gtwy.net/ip/)

#Url to update the gathered information by variables to duckdns server.
echo url="https://www.duckdns.org/update?domains=YourDOMAIN&token=YourTOKEN&ip=$ipv4add&ipv6=$ipv6add&verbose=true"$ | curl -k -o ~/autoipv6duckdns/autoipv6duckdns.log -K -


