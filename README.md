[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg?style=flat-square)](https://hub.docker.com/r/rsrichardstevens/circleci-node-aws/)

# CircleCI docker image with Node and AWS

### Intro
This image is based on [CircleCI's nodejs image](https://hub.docker.com/r/circleci/node/). Packages include
- Node: 9.0.0
- Python: 2.7.9
- AWS CLI: 1.11.181

### Build image
```
git clone https://github.com/richardstevens/circleci-node-awscli
cd circleci-node-aws
docker build -t rsrichardstevens/circleci-node-aws:latest .
```

### Push to Docker Hub
```
docker push rsrichardstevens/circleci-node-aws:latest
```

### Pull from Docker Hub
```
docker pull rsrichardstevens/circleci-node-aws:latest
```

### Run image
```
docker run -it rsrichardstevens/circleci-node-aws bash
```
