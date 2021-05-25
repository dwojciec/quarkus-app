ARG BASE_IMAGE=registry.access.redhat.com/ubi8/openjdk-11-runtime
ARG DEPLOYMENT=getting-started-1.0.0-SNAPSHOT.jar
FROM $BASE_IMAGE

ADD target/$DEPLOYMENT /deployments/$DEPLOYMENT
CMD ["/opt/jboss/container/java/run", "$DEPLOYMENT"]
