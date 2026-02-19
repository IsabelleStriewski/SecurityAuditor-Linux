#!/bin/bash
 
# ==============================================================================
# Security Auditor - Linux (SAL)
# Autor: Isabelle Striewski
# Beschreibung: Prüfung von System-Konfigurationen auf Sicherheitsrisiken.
# ==============================================================================
 
echo "=========================================="
echo "    LINUX SECURITY AUDIT STARTET"
echo "=========================================="
date
 
# Mein erster kleiner Security-Check
# Fokus: Systemübersicht und Dateirechte
 
echo "--- START DES CHECKS ---"
 
echo "Aktueller Nutzer:"                                  # wer ist gerade angemeldet?
whoami
 
echo "Suche nach unsicheren Dateien (Rechte 777):"        # Suche nach Dateien, die jeder bearbeiten darf (777)  - Sicherheitsrisiko in /home   
find /home -perm 777                                      # Permission (Berechtigung)
 
echo "Offene Verbindungen (Ports):"                       # offene Ports
netstat -tuln                                             # t=TCP (stabile Verb.), u=UDP (schnelle Verb.), l=Listening (Ports, die zuhören), n=Numeric (zeigt Zahlen)
 
echo "Darf root sich direkt per SSH anmelden?"            # SSH Einstellungen
grep "PermitRootLogin" /etc/ssh/sshd_config
 
echo "--- CHECK BEENDET ---"
 
 
echo -e "\n=========================================="
echo "    AUDIT ABGESCHLOSSEN"
echo "=========================================="
 
echo -e "\n========================================"
echo "    AUDIT ABGESCHLOSSEN"
ech"==============================================="
 
