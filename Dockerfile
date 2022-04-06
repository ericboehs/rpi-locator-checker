FROM ruby:alpine
RUN apk --no-cache add curl
COPY rpi /
HEALTHCHECK CMD curl --fail http://localhost:2000 || exit 1
EXPOSE 2000
CMD ["ruby", "rpi"]
