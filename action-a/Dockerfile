FROM lamastex/haskell-pinot

ADD entrypoint.sh /entrypoint.sh
ENV PORT 80
WORKDIR /home/runner/work/github-actions-prototype
RUN pwd
RUN cd ..
RUN pwd
COPY . /root/GIT
RUN ls -l
RUN ls /root/GIT
RUN stack setup
RUN stack exec pinot -- --from databricks --to mdbook /root/GIT/ASSIGNMENT-1.dbc -o src/contents
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


