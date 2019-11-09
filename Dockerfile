FROM ruby:2.6
RUN apt-get update -yqq \
    && apt-get install -yqq --no-install-recommends \
    postgresql-client && \
    curl -sL https://deb.nodesource.com/setup_13.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists

RUN npm install -g yarn

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
RUN yarn
COPY . .

EXPOSE 3000
CMD rails server -b 0.0.0.0
