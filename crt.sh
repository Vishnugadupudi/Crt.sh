
echo "

 ▄████▄   ██▀███  ▄▄▄█████▓       ██████  ██░ ██ 
▒██▀ ▀█  ▓██ ▒ ██▒▓  ██▒ ▓▒     ▒██    ▒ ▓██░ ██▒
▒▓█    ▄ ▓██ ░▄█ ▒▒ ▓██░ ▒░     ░ ▓██▄   ▒██▀▀██░
▒▓▓▄ ▄██▒▒██▀▀█▄  ░ ▓██▓ ░        ▒   ██▒░▓█ ░██ 
▒ ▓███▀ ░░██▓ ▒██▒  ▒██▒ ░  ██▓ ▒██████▒▒░▓█▒░██▓
░ ░▒ ▒  ░░ ▒▓ ░▒▓░  ▒ ░░    ▒▓▒ ▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒
  ░  ▒     ░▒ ░ ▒░    ░     ░▒  ░ ░▒  ░ ░ ▒ ░▒░ ░
░          ░░   ░   ░       ░   ░  ░  ░   ░  ░░ ░
░ ░         ░                ░        ░   ░  ░  ░
░                            ░                

"

echo -e "Target ==> $1\n"

curl -s https://crt.sh/\?q\=%.$1\&output\=json | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u | tee $1.txt ; 

echo -e "\nA total of `cat $1.txt | wc -l` subdomains were found for $1\n"

echo -e "\n>> 📁 Subdomains for $1 were saved in: $1.txt \n"

