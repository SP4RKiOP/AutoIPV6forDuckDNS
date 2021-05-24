# AutoIPV6forDuckDNS
Fully automatic script to update the ipv6 address on DuckDNS.

You came here because you know your problem that DUCKDNS does not self-updates ipv6 address of your system due to AWS limitations.
My this fully automatic script will help you to automate the process of manually updating ipv6 address of your system. (IPV4 updates automatically)

# Prerequisites
* shell scripting knowledge, curl
* ipv6 address support from ISP
* working internet.

# Installation
1. Create a directory to save the .sh and .log files that will be created by command: $mkdir autoipv6duckdns
2. Change to created directory with: $ cd autoipv6duckdns
3. Create a script using command: $nano autoipv6duckdns.sh
4. Paste the code from the autoipv6duck.sh in my this git repo, or if you know how to download and execute a script then go for it.
5. Now in the script you must edit 2 things that are 1. Domain (which you defined in DuckDns, "excluding" the “.duckdns.org" part) 2. Token. (these are different for every user).
6. Edit those two things and the save the script by pressing ctrl+o, Enter, ctrl+x.
7. Giving executable permission to the script, input command: $chmod +x autoipv6duckdns.sh
8. Test the script by: $./autoipv6duckdns.sh
9. A log file will get created after the execution of the script containing the details of the execution.
10. Access the log file by: $cat autoipv6duckdns.log
11. If output is "OK with ip output" then everything is alright, if "KO" then recheck your domain and token for any error or issue.
12. Automate the process of updating the IP every 30 mins with cron process.
13. First open cron with: $crontab -e
14. Then enter the given line without the double Quotation at the bottom of the crontab: 
"*/30 * * * * ~/autoipv6duckdns/autoipv6duckdns.sh >/dev/null 2>&1"
13. Exit the crontab. 
14. DONE........................ENJOY
