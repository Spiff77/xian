In order to run the labs, you need to have Docker and MySQL Workbench installed.

## Docker
Go to https://docs.docker.com/desktop/setup/install/windows-install/ and follow the instructions

## MySQL Workbench
Go to https://dev.mysql.com/downloads/workbench/ and follow the instructions

## Run MySQL Database
Open the command line (Windows-key + R, then type `cmd`) or open the Power Shell.

Then type:

```bash
docker run --name mysql-db -e MYSQL_ROOT_PASSWORD=myPa$$word -e MYSQL_DATABASE=car -p 3306:3306 -d mysql:latest
```
