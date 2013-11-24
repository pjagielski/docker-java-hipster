FROM nickstenning/java7

RUN apt-get install -y curl unzip vim

RUN adduser hipster --home /home/hipster --gecos "" --disabled-password

# gvm
RUN curl -s get.gvmtool.net | bash

# frameworks
RUN bash -c "source ~/.gvm/bin/gvm-init.sh && gvm install gradle; exit 0"
RUN bash -c "source ~/.gvm/bin/gvm-init.sh && gvm install lazybones; exit 0"
RUN bash -c "source ~/.gvm/bin/gvm-init.sh && gvm install vertx; exit 0"
RUN bash -c "source ~/.gvm/bin/gvm-init.sh && gvm install springboot; exit 0"

# phantomjs
RUN apt-get install bzip2 curl libfreetype6 libfontconfig1  -y
RUN curl -k -O https://phantomjs.googlecode.com/files/phantomjs-1.9.2-linux-x86_64.tar.bz2
RUN tar -xvf phantomjs-1.9.2-linux-x86_64.tar.bz2 && rm phantomjs-1.9.2-linux-x86_64.tar.bz2
RUN mv /phantomjs-1.9.2-linux-x86_64 /usr/local/phantomjs-1.9.2-linux-x86_64
RUN ln -s /usr/local/phantomjs-1.9.2-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs

# home
RUN cp -R ~/.gvm /home/hipster
ADD examples /home/hipster/examples
RUN chown -R hipster:hipster /home/hipster/
RUN echo "source /home/hipster/.gvm/bin/gvm-init.sh" > /home/hipster/.bashrc

EXPOSE 8080

WORKDIR /home/hipster

USER hipster

CMD /bin/bash
