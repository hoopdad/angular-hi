#ng build && \
docker build -t myhispa:latest -t myhispa:$1 . && \
docker image ls && \
docker tag myhispa:$1 localhost:9002/repository/cntnr/myhispa:$1 && \
docker login localhost:9002 && \
docker push localhost:9002/repository/cntnr/myhispa:$1
