FROM ekidd/rust-musl-builder AS builder

ARG VERSION

RUN cargo install mdbook --vers ${VERSION} --no-default-features

FROM alpine:latest

COPY --from=builder \
    /usr/local/bin/mdbook \
    /usr/local/bin/

CMD /usr/local/bin/mdbook
