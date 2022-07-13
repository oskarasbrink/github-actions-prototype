FROM lamastex/haskell-pinot

ADD entrypoint.sh /entrypoint.sh
RUN pwd
COPY /home/runner/work/github-actions-prototype/github-actions-prototype/./action-a/Dockerfile /root/GIT
RUN ls -l
RUN ls /root/GIT
RUN stack exec pinot -- --from databricks --to jupyter-book ASSIGNMENT-1.dbc -o src/contents
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


