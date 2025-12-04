FROM alpine:latest

RUN apk add --no-cache curl unzip

WORKDIR /app

RUN curl -L -o pb.zip https://github.com/pocketbase/pocketbase/releases/download/v0.22.8/pocketbase_0.22.8_linux_amd64.zip
RUN unzip pb.zip
RUN chmod +x pocketbase

EXPOSE 8090

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]


