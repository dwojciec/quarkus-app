ARG BASE_IMAGE=registry.access.redhat.com/ubi8/openjdk-11-runtime
FROM $BASE_IMAGE

ARG DEPLOYMENT=getting-started-1.0.0-SNAPSHOT-runner.jar

COPY target/$DEPLOYMENT /app/quarkus-app.jar
CMD ["java", "-jar", "/app/quarkus-app.jar"]