FROM alpine:latest

RUN apk add --no-cache zola

WORKDIR /site
COPY . .

CMD ["zola", "build"]
