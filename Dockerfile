FROM vookimedlo/ubuntu-qt:latestDistroOfficial_gcc_eoan

COPY . /user/src/remotesrc
WORKDIR /user/src/remotesrc

RUN chdir lib/LibDS && \
    qmake && \
    make && \
    ls && \
    chdir ../../ && \
    pwd && \
    g++ -o RemoteDS src/main.cpp -lLibDS -Llib/LibDS/
CMD ["./RemoteDS"]
#CMD `gcc -print-prog-name=cpp` -v