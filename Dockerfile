FROM scavin/docker-efbv2:latest
RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.14/main" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/v3.14/community" >> /etc/apk/repositories \
	&& apk update \
	&& apk add cairo cairo-dev \
	&& pip3 install ehforwarderbot --upgrade \
	&& pip3 install efb-telegram-master --upgrade \
	&& pip3 uninstall efb-wechat-slave -y \
	&& pip3 install efb-wechat-slave-itchat-uos \
	&& pip3 install lottie cairosvg
	
CMD ["tail", "-f", "/dev/null"]
