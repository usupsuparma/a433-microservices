# membuat image
docker build -t item-app .

# Membuat Tag V1
docker tag item-app usupsuparma/item-app:v1

# Melihat semua daftar images
docker images

# Login ke Docker Hub
# docker login -u %DOCKER_USERNAME% -p %DOCKER_PASSWORD%
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# Push image ke Docker Hub
docker push usupsuparma/item-app:v1
