FROM ekidd/rust-musl-builder AS builder

RUN cargo install mdbook --vers 0.2.1 --no-default-features

FROM alpine:latest

COPY --from=builder \
    /home/rust/.cargo/bin/mdbook \
    /usr/local/bin/

ENV BOOKDIR /mdbook

VOLUME $BOOKDIR
WORKDIR $BOOKDIR

ENTRYPOINT ["/usr/local/bin/mdbook"]
CMD ["--help"]
