FROM mitchty/alpine-ghc

RUN \
	apk add --update \
		bash \
		# fish shell needs bc for math
		bc \
		fish \
		lua \
		mksh \
		nodejs \
		perl \
		php5 \
		python3 \
		ruby \
		tcl \
		zsh \

		gcc \
		g++ \
		go \
		make

ENV PATH="/app/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
ADD app /app/
WORKDIR /app

# compile commands that need compiling
RUN make

CMD ["/app/test/test_fizzbuzz.sh"]
