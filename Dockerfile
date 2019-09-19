from alpine


RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update && apk add --update --no-cache graphviz font-bitstream-type1

COPY tree /home
COPY template.dot /home

WORKDIR /home
ENTRYPOINT ["sh", "./entrypoint.sh"]

