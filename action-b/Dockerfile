FROM lamastex/rust-mdbook

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
RUN apt install tree
ENTRYPOINT ["/entrypoint.sh"]
