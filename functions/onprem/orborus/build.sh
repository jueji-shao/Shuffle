NAME=orborus
VERSION=0.1.0

echo "Running docker build with $NAME:$VERSION"
#docker rmi frikky/shuffle:$NAME --force
docker build . -t frikky/shuffle:$NAME -t docker.pkg.github.com/frikky/shuffle/$NAME:$VERSION -t frikky/$NAME:$VERSION

docker push frikky/$NAME:$VERSION
docker push frikky/shuffle:$NAME
#docker push docker.pkg.github.com/frikky/shuffle/$NAME:$VERSION
