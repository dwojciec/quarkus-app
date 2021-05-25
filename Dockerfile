ARG BASE_IMAGE=registry.access.redhat.com/ubi8/openjdk-11-runtime
FROM $BASE_IMAGE

ARG DEPLOYMENT=getting-started-1.0.0-SNAPSHOT.jar
ADD target/$DEPLOYMENT /deployments/quarkus-app.jar
CMD ["/opt/jboss/container/java/run", "/deployments/quarkus-app.jar"]
