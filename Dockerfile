FROM vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_eoan
#RUN git clone https://github.com/Team3487-RedPrideRobotics/RemoteDS.git
COPY . /RemoteDS
WORKDIR /RemoteDS
RUN apt-get install libcpprest-dev && \
    chdir lib/LibDS && \
    qmake && \
    make && \
    make install && \
    chdir ../../ && \
    g++ -o RemoteDS src/main.cpp -lLibDS -Llib/LibDS/
CMD ["./RemoteDS"] 