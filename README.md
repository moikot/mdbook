# mdBook Docker image
This Dockerfile uses [multistage builds][multistage] to build mdBook Docker image. First of all it is based on [ekidd/rust-musl-builder] which allows to build a completely static Rust binary of [mdBook] with no external dependencies. The result of the build is coped to a small [Alpine] based image.

[mdBook]:
https://github.com/rust-lang-nursery/mdBook
[multistage]: https://docs.docker.com/engine/userguide/eng-image/multistage-build/
[ekidd/rust-musl-builder]:
https://github.com/emk/rust-musl-builder
[Alpine]:
https://hub.docker.com/_/alpine?tab=description
