#!/bin/bash

domain=$1

echo "[+] Running Subdomain Enumeration..."
subfinder -d $domain -o subs.txt

echo "[+] Running Nuclei Scan..."
nuclei -l subs.txt -t cves/ -o results.txt

echo "[+] Recon Complete for $domain"
