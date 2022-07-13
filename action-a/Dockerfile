FROM lamastex/haskell-pinot

ADD entrypoint.sh /entrypoint.sh
RUN pwd
RUN cd ..
COPY . /root/GIT
RUN ls -l
RUN ls /root/GIT
RUN cd root/GIT
RUN stack exec pinot -- --from databricks --to jupyter-book ASSIGNMENT-1.dbc -o src/contents
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
