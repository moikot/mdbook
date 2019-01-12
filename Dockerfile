FROM ekidd/rust-musl-builder AS builder

RUN cargo install mdbook --vers 0.2.1 --no-default-features

FROM alpine:latest

COPY --from=builder \
    /home/rust/.cargo/bin/mdbook \
    /usr/local/bin/

CMD /usr/local/bin/mdbook
