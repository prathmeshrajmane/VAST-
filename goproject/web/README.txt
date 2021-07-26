
 docker build -t my-go-image .

 docker run -it -p 8080:8080 my-go-image

 using volumes

 docker run -it -p 8080:8080 -v $(pwd)/static:/app/static my-go-image
