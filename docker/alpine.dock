FROM alpine:3.3

RUN \
	apk update && \
	apk add \
		bash \
		fish \
		lua \
		mksh \
		nodejs \
		perl \
		php \
		python3 \
		ruby \
		tcl \
		zsh \

		gcc \
		g++ \
		go \
		make

ADD app /app/
ENV PATH="/app/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
WORKDIR /app
CMD ["/app/test.sh"]
