docker build -t simple-nginx .

docker run -d -it -p 8080:80 simple-nginx
