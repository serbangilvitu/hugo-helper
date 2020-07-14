# hugo-local
This project is intended to support local development for static websites running with Hugo https://gohugo.io/

It is not intended for production usage.

## Usage

### Running the server
If you're creating a new site, have a look at these steps https://gohugo.io/getting-started/quick-start/#step-2-create-a-new-site

Change directory to your site repository.
 
```
docker run --rm -it --name hb -p 1313:1313 -v $(pwd):/hugo/site docker.io/serbangilvitu/hugo-local
```
The configuration file defaults to `config.toml`, but you can specify a different one using the CONFIG_FILE env variable
```
docker run --rm -it --name hb -e CONFIG_FILE="config.yaml" -p 1313:1313 -v $(pwd):/hugo/site docker.io/serbangilvitu/hugo-local
```

Your website is now accessible at http://localhost:1313

The changes you make will be immediately reflected.

### Add a new post

Execute the following line, changing the value for NEW_POST to the name of your post

```
NEW_POST="my-awesome-idea" && \
    docker exec --workdir /hugo/site  hb hugo new posts/${NEW_POST}.md && \
    sudo chown ${USER} content/posts/${NEW_POST}.md
```

### Commit your work
Once you are content with the way your site looks, you can commit your work, and deploy it to your website.
