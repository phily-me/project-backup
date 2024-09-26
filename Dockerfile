FROM scratch
WORKDIR /bar
COPY foo .

ENTRYPOINT [ "/bar/foo" ]