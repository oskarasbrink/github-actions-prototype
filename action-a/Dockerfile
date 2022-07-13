FROM lamastex/dockerdev:spark3x

ADD entrypoint.sh /entrypoint.sh
RUN cd ..
COPY . /root/GIT
RUN ls -l
RUN ls /root/GIT
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
