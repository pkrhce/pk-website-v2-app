FROM alpine:latest AS builder
WORKDIR /app
COPY index.html .

FROM nginx:1.25-alpine
COPY --from=builder /app/index.html /usr/share/nginx/html/index.html
EXPOSE 80
