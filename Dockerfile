FROM alpine:3.19

# Versión de PocketBase (cámbiala si quieres otra)
ENV PB_VERSION=0.22.14

WORKDIR /pb

# Instala dependencias necesarias
RUN apk add --no-cache unzip wget ca-certificates && \
    wget -q https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip && \
    unzip pocketbase_${PB_VERSION}_linux_amd64.zip && \
    chmod +x pocketbase && \
    rm pocketbase_${PB_VERSION}_linux_amd64.zip

EXPOSE 8090

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
