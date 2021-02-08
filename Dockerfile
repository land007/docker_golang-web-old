FROM land007/gocv:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

ADD src_exiffix.tar.gz /usr/local/go/path/
ADD src_github.com.tar.gz /usr/local/go/path/
ADD src_gopkg.in.tar.gz /usr/local/go/path/
ADD src_golang.org.tar.gz /usr/local/go/path/

RUN echo $(date "+%Y-%m-%d_%H:%M:%S") >> /.image_times && \
	echo $(date "+%Y-%m-%d_%H:%M:%S") > /.image_time && \
	echo "land007/golang-web-old" >> /.image_names && \
	echo "land007/golang-web-old" > /.image_name


#docker stop golang-web-old ; docker rm golang-web-old ; docker run -it --privileged --name golang-web-old -p 20022:20022 land007/golang-web-old:latest
#> docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t land007/golang-web-old --push .
