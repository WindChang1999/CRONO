FROM centos:7.9.2009 AS builder

RUN yum groupinstall 'Development Tools' -y

WORKDIR /app
COPY . /app

RUN make
RUN mkdir build
RUN bash mv_builds.sh


FROM centos:7.9.2009

COPY --from=builder /app/build/* /home
WORKDIR /home
CMD [ "bash" ]