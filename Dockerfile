FROM ubuntu:19.10
RUN apt update && apt install -y curl csvtool locales && locale-gen pl_PL.UTF-8
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -yq nodejs build-essential
RUN npm install -g @szygi/emoji-cloud@1.0.0
ADD bin/* /usr/local/bin/
ENV LC_ALL=pl_PL.UTF-8
ENTRYPOINT ["/usr/local/bin/report-toolkit"]
