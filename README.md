# database data mounted and image from mysql official: PORT 8006
docker run --name [container name] -p 8006:3306 -v /Users/kathan/Documents/dbdata:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql

# database data mounted and image from docker file in this repo: PORT 8006
docker run --rm -it -p 8006:3306/tcp -p 33060:33060/tcp -v /Users/kathan/Documents/dbdata:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql_distdb:latest

# Docker MSYQL Client
docker run --rm -it -p 33060:33060/tcp -p 3306:3306/tcp -e MYSQL_ROOT_PASSWORD=root mysql_distdb:latest

# Command to get docker machine host IP
ipconfig getifaddr en0

# RUN mysql client on Mac
docker run -it --rm mysql mysql --port=8006 -h host.docker.internal -u root -p

# RUN Alpine mysql-client mariadb client to connect to mysql supports only < MYSQL 8 version
docker run -it --network dist-mysql --rm mysql mysql -h 192.168.43.95 -uroot -p

# pass environment file
docker run --env-file=./dist.env -it --rm dist-api:v5
mysql --port=8006 -h host.docker.internal -u root -p