```
docker run --rm -it --name hb -p 1313:1313 -v $(pwd):/hugo/site hugo-builder
```

```
NEW_POST="my-awesome-idea" && \
    docker exec --workdir /hugo/site  hb hugo new posts/${NEW_POST}.md && \
    sudo chown ${USER} content/posts/${NEW_POST}.md
```