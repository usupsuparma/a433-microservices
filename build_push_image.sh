# membuat image dengan Tag v1
docker build -t item-app:v2 .


# Melihat semua daftar images
docker images


# Merubah nama image
docker tag item-app:v2 usupsuparma/item-app:v2

# Login ke Docker Hub
# docker login -u %DOCKER_USERNAME% -p %DOCKER_PASSWORD%
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# Push image ke Docker Hub
docker push usupsuparma/item-app:v2
