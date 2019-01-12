# mdBook Docker image

Use `init` command to initialise a directory with the minimal boilerplate elements to start with.

```bash
mkdir mydoc
cd mydoc
docker run -it --rm -v $(pwd):/mdbook moikot/mdbook init
```

Use `build` command to render your book.

```bash
docker run --rm -v $(pwd):/mdbook moikot/mdbook build
```
