# unblibraries/redis
Docker container : leverages phusion/baseimage to deploy a baseline redis instance.

## Usage
```
docker run \
       --rm \
       --name redis \
       -v /local/dir:/data \
       -p 6379:6379 \
       unblibraries/redis
```

## License
- unblibraries/redis is licensed under the MIT License:
  - http://opensource.org/licenses/mit-license.html
- Attribution is not required, but much appreciated:
  - `Redis Docker Container by UNB Libraries`

## Credit
- Original work for this container was based on that of [Ferran Rodenas](https://github.com/frodenas/docker-redis).
