#!/bin/bash
# Presented to you by Abhishek Sinha
# Fully Automation of IPv6 address update to DUCKDNS

# Fetch the IPv4 address
ipv4add=$(curl --silent --ipv4 https://gtwy.net/ip/)

# Fetch the IPv6 address
ipv6add=$(curl --silent --ipv6 https://gtwy.net/ip/)

# URL to update the gathered information by variables to DuckDNS server
url="https://www.duckdns.org/update?domains=YOURdomain&token=YOURtoken&ip=$ipv4add&ipv6=$ipv6add&verbose=true"

# Send the update request
curl -k "$url"
