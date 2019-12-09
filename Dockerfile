FROM gcc

COPY . /user/src/remotesrc
WORKDIR /user/src/remotesrc

RUN wget http://download.qt.io/official_releases/qt/5.13/5.13.2/qt-opensource-linux-x64-5.13.2.run && \
    apt-get install build-essential

RUN ["qmake", "lib/LibDS"]
RUN ["make"]
RUN ["g++","-o","RemoteDS","-l","lib/LibDS", "src/main.cpp"]

CMD ["./RemoteDS"]