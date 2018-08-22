FROM ruby

RUN apt-get -y update && apt-get -y install libicu-dev cmake && rm -rf /var/lib/apt/lists/*
RUN gem install github-linguist
RUN gem install gollum
RUN gem install unicorn 

WORKDIR /wiki
RUN mkdir logs

CMD ["unicorn", "-d", "-c", "unicorn.rb"]
EXPOSE 80
