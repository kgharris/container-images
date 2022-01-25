FROM scratch
ADD amzn-container-minimal-2018.03.0.20220119.1-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-130e950e6fd637910aab7091bd642e931a601a4cb070782644264ea9b3283031.tar.gz" \
 && echo "4c580d08afabb56f120f4b3b310f10858508729953a738b0734d857158c63be5  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
