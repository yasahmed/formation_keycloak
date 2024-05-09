#! /bin/bash
mvn clean package -DskipTests && cp target/dsit.*.jar ../keycloak-demos/providers
