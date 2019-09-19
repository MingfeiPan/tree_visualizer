from alpine


#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk update && apk add --update --no-cache graphviz font-bitstream-type1

COPY tree /tree
COPY template.dot /template.dot
COPY entrypoint.sh  /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

