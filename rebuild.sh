docker stop jcadic_vanilla; docker rm jcadic_vanilla
docker stop jcadic_syns; docker rm jcadic_syns
docker build . -t jcadic:syns
sh start.sh
docker exec -it jcadic_syns bash
