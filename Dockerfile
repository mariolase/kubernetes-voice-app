FROM nginx:latest as builder
COPY index.html /usr/share/nginx/html
MAINTAINER Richard Regan <riregan@deloitte.co.uk>

FROM nginx:stable-alpine
COPY --from=builder /usr/share/nginx/html/index.html /usr/share/nginx/html/index.html

EXPOSE 8000
