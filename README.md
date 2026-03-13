# ubi-squid

## Build

```shell
export VERSION=$(date +%Y%m%d%H%M)
export IMAGE="quay.io/stormshift/ubi-squid:${VERSION}"
podman build --platform linux/amd64,linux/arm64  --manifest ${IMAGE}  .
podman manifest push ${IMAGE}
```
