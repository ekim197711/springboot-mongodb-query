cd $(dirname $0)
container=mongo
docker rm -f "$container"
docker run --name "$container" -p 27017:27017 -d mongo:latest
sleep 3
docker logs "$container"
docker ps