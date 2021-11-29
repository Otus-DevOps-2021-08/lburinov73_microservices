FROM ruby:2.2-alpine

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . $APP_HOME

RUN apk --no-cache --update add build-base=0.4-r1 && \
    gem install bundler -v 1.17.3 --no-doc && \
    bundle install && \
    gem uninstall bundler && \
    apk del build-base

ENV COMMENT_DATABASE_HOST comment_db
ENV COMMENT_DATABASE comments

CMD ["puma"]
