FROM scratch
ADD amzn2-container-raw-2.0.20220121.0-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-86059ff059c15219c13900625367028ea52b1d95d6f6515947fe04983baf9add.tar.gz" \
 && echo "7cbab49134e393024873c4c8ad4937d84c8b7ed316b4d6260ae6b425cdd89e91  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
