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

echo "[+] Done. Check subs.txt and results.txt"

