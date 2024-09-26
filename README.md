# Evaluation von  **docker-volume-backup**

- [Evaluation von  **docker-volume-backup**](#evaluation-von--docker-volume-backup)
  - [Development](#development)
  - [Konfiguration](#konfiguration)
  - [Backup wieder herstellen](#backup-wieder-herstellen)

Das **offen/docker-volume-backup** Docker-Image kann als leichtgewichtiger (unter 15 MB) Begleitcontainer in einer bestehenden Docker-Umgebung verwendet werden. Es übernimmt wiederkehrende oder einmalige Backups von Docker-Volumes in ein lokales Verzeichnis, S3, WebDAV, Azure Blob Storage, Dropbox oder SSH-kompatible Speicher (oder eine Kombination davon) und entfernt alte Backups, falls konfiguriert. Es unterstützt außerdem die Verschlüsselung der Backups mittels GPG und das Versenden von Benachrichtigungen bei (fehlgeschlagenen) Backups.

## Development

Um das Beispiel hier nach zu vollziehen, musst du folgende Voraussetzungen erfüllen:
- Docker Desktop
- go


1. Docker Container bauen: `docker build -t foobar:latest`
2. foo für die richtige Architektur bauen:
   1. `GOOS=linux GOARCH=arm64 go build foo.go` (für Apple/ARM Laptops) 
   2. `GOOS=linux GOARCH=x86-64 go build foo.go` (für PC-Laptops, alte Intel Apple Laptops)
3. Stack starten: `docker-compose up`
4. manuelles Backup triggern: `docker exec <container_ref> backup`

## Konfiguration

Eine gute Sammlung von verschiedenen Use-Cases findet man [hier](https://offen.github.io/docker-volume-backup/recipes)

## Backup wieder herstellen

[Restore volumes from a backup](https://offen.github.io/docker-volume-backup/how-tos/restore-volumes-from-backup.html)