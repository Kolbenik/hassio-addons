# Mailpit für Home Assistant

## Zusammenfassung
Dieses Add-on integriert Mailpit als lokalen E-Mail-Server (SMTP-Sink) in Home Assistant. Mailpit fungiert als reines Auffangbecken für interne System-E-Mails. Es nimmt ausgehende Nachrichten von lokalen Diensten im Netzwerk an, leitet diese jedoch nicht in das echte Internet weiter. Stattdessen speichert es die Nachrichten lokal und stellt sie in einer integrierten Weboberfläche zur Verfügung. Das System eignet sich hervorragend, um automatisierte Mails oder Passwort-Reset-Links im lokalen Netz abzufangen und zu lesen.

## Über die Software
Dieses Home Assistant Add-on fungiert als Wrapper. Die eigentliche Kernsoftware **Mailpit** ist ein unabhängiges Open-Source-Projekt, das als moderner und schneller Nachfolger von MailHog entwickelt wurde. 

* **Ursprünglicher Entwickler:** Ian Kent (GitHub: axllent)
* **Offizielles Projekt:** https://github.com/axllent/mailpit
* **Verwendetes Basis-Image:** `axllent/mailpit:latest`

## Konfiguration und Nutzung
Sobald das Add-on in Home Assistant gestartet wurde, ist der SMTP-Server im Netzwerk aktiv. Um lokale Applikationen an Mailpit anzubinden, müssen dort folgende Verbindungseinstellungen für den Postausgangsserver hinterlegt werden:

* **SMTP-Server:** Die IP-Adresse der Home Assistant Instanz
* **SMTP-Port:** `1025`
* **Verschlüsselung (SSL/TLS):** Deaktiviert
* **Authentifizierung:** Keine (Benutzername und Passwort bleiben leer)

## Web-Interface
Um die empfangenen E-Mails zu lesen, kann das Web-Interface von jedem Rechner im Netzwerk aufgerufen werden.

* **Aufruf über den Browser:** `http://<IP-deines-Home-Assistant>
* :8025`
