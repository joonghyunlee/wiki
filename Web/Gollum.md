# Gollum

## 실행
여기서는 docker에서 실행하는 것으로 한다


* 방법1: docker-compose 사용 
  * `docker-compose.yml` 생성
  
```yml
version: '3.0'

services:
  wiki:
    image: gollum
    container_name: gollum
    ports:
      - '80:80'
    volumes:
      - '/root/wiki/:/wiki'
```
  * 실행

```bash
docker-compose up -d
```

* 방법2: docker command 사용

```bash
docker run -v `pwd`:/wiki -p 4567:80 --name vue.js gollum
```