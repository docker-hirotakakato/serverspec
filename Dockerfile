FROM alpine:latest

RUN apk add --no-cache ruby ruby-etc ruby-io-console ruby-json && \
    gem install -N docker-api serverspec

CMD ["rspec", "-f", "d", "--no-color"]
