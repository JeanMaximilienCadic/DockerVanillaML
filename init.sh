docker rmi -f jcadic/vanilla
docker stop jcadic_vanilla
docker rm jcadic_vanilla
docker build . -t jcadic/vanilla
docker run -it --rm jcadic/vanilla
