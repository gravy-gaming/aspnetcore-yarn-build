FROM microsoft/aspnetcore-build:2.0.3-stretch
LABEL Author="Gravy Gaming"

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
    &&  apt-get update && apt-get install yarn
