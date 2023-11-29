IP=$(curl -s https://ipv4.icanhazip.com/)
JSON={\"orion\":\"http://$IP:1026\",\"keyrock\":\"http://$IP:3005\",\"started\":true}
curl -X POST https://hyperride.engsep.repl.co/fiware -H 'Content-Type: application/json' -d $JSON
echo -e "\033[1;33mPoC availaible at: https://hyperride.engsep.repl.co/ui\033[0m"
