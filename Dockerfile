FROM ruby:2

LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="ASCII Art Action"
LABEL "com.github.actions.description"="GitHub Action for printing out ASCII Art"
LABEL "com.github.actions.icon"=""
LABEL "com.github.actions.color"="greenish"

RUN gem install artii

COPY artii.rb /bin/artii

ENTRYPOINT ["artii"]
