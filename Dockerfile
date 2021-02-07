FROM alpine:3.12

RUN apk add --no-cache --update yarn
RUN wget -P / https://bitbucket.org/bitbucketpipelines/bitbucket-pipes-toolkit-bash/raw/0.4.0/common.sh

RUN yarn global add sass

COPY pipe /

ENTRYPOINT ["/pipe.sh"]