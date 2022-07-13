FROM lamastex/haskell-pinot

ADD entrypoint.sh /entrypoint.sh
ENV PATH "$PATH:/root/tilowiklund/pinot/src"
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


