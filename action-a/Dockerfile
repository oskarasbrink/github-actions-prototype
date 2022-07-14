FROM lamastex/haskell-pinot

ADD entrypoint.sh /entrypoint.sh
ENV PATH "$PATH:/root/tilowiklund/pinot/src"
ENV PATH "$PATH:/root/tilowiklund/pinot/.stack-work/install/x86_64-linux-tinfo6/683e847c51fc1564e1993dabfce286242d9677886df9885a79955a2d0adb37f8/8.8.4/bin"
ENV PINOT_DIR="/root/tilowiklund/pinot"
RUN exec bash
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


