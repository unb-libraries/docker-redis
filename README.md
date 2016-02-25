# unblibraries/redis [![](https://badge.imagelayers.io/unblibraries/redis:latest.svg)](https://imagelayers.io/?images=unblibraries/redis:latest 'Get your own badge on imagelayers.io')
Docker container : a small, baseline redis instance. There isn't much unique here, but the conf file is included.

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
