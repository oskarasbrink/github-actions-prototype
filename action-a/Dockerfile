FROM lamastex/haskell-pinot

ADD entrypoint.sh /entrypoint.sh
ENV PATH "$PATH:/root/tilowiklund/pinot"
RUN echo "${PATH}" >> /etc/bash.bashrc" >> /root/.bashrc
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


