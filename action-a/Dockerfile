FROM lamastex/haskell-pinot

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN mkdir -p /github
RUN ln -s /root $HOME
ENTRYPOINT ["/entrypoint.sh"]


