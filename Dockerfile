#
# Build stage
#
FROM maven:3.8.7-openjdk-18-slim AS build

WORKDIR /

# Copy dependencies for the build
COPY src /home/app/src
COPY pom.xml /home/app

# Download dependencies and package the app
RUN mvn -f /home/app/pom.xml clean package

FROM scratch AS export-stage
COPY --from=build /home/app/target .