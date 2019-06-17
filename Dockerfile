FROM nginx:latest as builder
COPY index.html /usr/src/html
MAINTAINER Richard Regan <riregan@deloitte.co.uk>

FROM nginx:stable-alpine
COPY --from=builder /usr/src/html/index.html /usr/src/html/index.html

