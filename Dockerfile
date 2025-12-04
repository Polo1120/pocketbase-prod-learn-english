FROM alpine:3.18

RUN apk add --no-cache libc6-compat

WORKDIR /app

COPY pocketbase /app/pocketbase
RUN chmod +x /app/pocketbase

EXPOSE 8080

CMD ["/app/pocketbase", "serve", "--http=0.0.0.0:8080"]

