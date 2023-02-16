FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl gnupg

RUN curl -sL https://deb.nodesource.com/setup_12.x  | bash -

RUN apt-get update && apt-get install -y nodejs

RUN apt-get update && apt-get install -y openjdk-8-jdk

RUN apt-get update && apt-get install -y android-sdk

RUN apt-get update && apt-get install -y unzip

RUN apt-get update && apt-get install -y lib32stdc++6

RUN curl https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_2.5.3-stable.tar.xz -o flutter.tar.xz

RUN tar xf flutter.tar.xz && rm flutter.tar.xz

ENV PATH="$PATH:/flutter/bin"

WORKDIR /app

COPY . /app

RUN flutter pub get

RUN flutter build apk

CMD ["flutter", "run", "--release"]
