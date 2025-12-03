#!/bin/bash

domain="$1"

if [ -z "$domain" ]; then
  echo "Usage: $0 domain.com"
  exit 1
fi

echo "[+] Running Subdomain Enumeration on $domain ..."
subfinder -d "$domain" -o subs.txt

echo "[+] Running Nuclei scan on discovered subdomains..."
nuclei -l subs.txt -t cves/ -o results.txt

echo "[+] Recon Complete for $domain"
echo "[+] Done. Check subs.txt and results.txt"
#!/bin/bash

<<<<<<< HEAD
domain="$1"

if [ -z "$domain" ]; then
  echo "Usage: $0 domain.com"
  exit 1
fi

echo "[+] Running Subdomain Enumeration on $domain ..."
subfinder -d "$domain" -o subs.txt

echo "[+] Running Nuclei scan on discovered subdomains..."
nuclei -l subs.txt -t cves/ -o results.txt

echo "[+] Done. Check subs.txt and results.txt"

=======
domain=$1

echo "[+] Running Subdomain Enumeration..."
subfinder -d $domain -o subs.txt

echo "[+] Running Nuclei Scan..."
nuclei -l subs.txt -t cves/ -o results.txt

echo "[+] Recon Complete for $domain"
>>>>>>> 7c028fa9a207f15475d5232b2f5cdfd9da5d4993
