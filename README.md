# mdBook Docker image

This small [mdBook CLI] Docker image is built using [ekidd/rust-musl-builder] as a builder.

Use `init` command to initialize a directory with the minimal boilerplate elements to start with.

```bash
mkdir mydoc
cd mydoc
docker run -it --rm -v $(pwd):/mdbook moikot/mdbook init
```

Use `build` command to render your book.

```bash
docker run --rm -v $(pwd):/mdbook moikot/mdbook build
```

Please refer to [mdBook CLI] for more commands and information about how to use them.

[Dockerfile](https://github.com/moikot/mdbook/blob/master/Dockerfile)

[mdBook CLI]: http://rust-lang-nursery.github.io/mdBook/cli/init.html

[ekidd/rust-musl-builder]: https://github.com/emk/rust-musl-builder
