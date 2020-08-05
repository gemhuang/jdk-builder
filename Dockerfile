FROM debian:stretch

ENV BOOT_VER "7.0.262-zulu"

VOLUME [ "/app" ]

WORKDIR /app

RUN sed -i 's/deb\.debian\.org\/debian/opensource.nchc.org.tw\/debian/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y curl wget zip unzip mercurial && \
    apt-get install -y build-essential && \
    apt-get install -y libfreetype6 libfreetype6-dev && \
    apt-get install -y libcups2 libcups2-dev && \
    apt-get install -y libx11-dev libxext-dev libxrandr-dev libxtst-dev libxt-dev && \
    apt-get install -y libasound2-dev && \
    apt-get install -y libffi-dev && \
    apt-get install -y libfontconfig1-dev && \
    apt-get install -y ccache

RUN rm /bin/sh && \
    ln -s /bin/bash /bin/sh

RUN curl -s "https://get.sdkman.io" | bash
RUN source "$HOME/.sdkman/bin/sdkman-init.sh"
RUN chmod a+x "$HOME/.sdkman/bin/sdkman-init.sh"
RUN yes | /bin/bash -l -c "sdk install java ${BOOT_VER}"

COPY build-jdk.sh /.

