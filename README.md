# Hugo blog container

This is a containered version of [hugo](https://gohugo.io/), a website/blogging framework written in Go.

In order to have it working locally, run:

```bash
docker container run -it --rm luizgribeiro/hugoblog:1.0.0
```

This command will provide you a Bash interpreter inside a container with hugo pre-installed.

### Use cases

Let's suppose you are working on a hugo page on a local directory, and you'd also like to access it on your browser.
Then, the following commands should be used:

```bash
docker container run -it --rm -v $(pwd):/blog -p 1313:1313 luizgribeiro/hugoblog:1.0.1
```

After that, from inside the container:

```bash
hugo serve --bind 0.0.0.0
```
