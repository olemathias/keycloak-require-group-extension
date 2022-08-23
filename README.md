# keycloak-require-group-extension
Require a user to be member of a group before allowing access to a client

## Build

```
DOCKER_BUILDKIT=1 docker build --output out .
```

Upload the .jar file (`./out/keycloak-require-group-extension-19.0.1.jar`) to /opt/keycloak/providers/