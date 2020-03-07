FROM ubuntu:19.10
RUN apt update && apt install csvtool locales && locale-gen pl_PL.UTF-8
ADD bin/* /usr/local/bin/
ENV LC_ALL=pl_PL.UTF-8
ENTRYPOINT ["/usr/local/bin/report-toolkit"]
