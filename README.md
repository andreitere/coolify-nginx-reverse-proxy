# coolify-nginx-reverse-proxy

# running on coolify

- Create a resource under a project
- Docker Image: `ghcr.io/andreitere/coolify-nginx-reverse-proxy` Tag: `latest`
- Env Var `PROXY_HOST` set to something like: `http://192.168.1.21:8123`
- Set the domain you want to proxy, e.g. `https://test001.mydomain.com`
- Save and redeploy

# running locally

```shell
docker run \
  --rm \
  -e PROXY_HOST=http://192.168.1.21:8123 \
  -p 80:80 \
  --build-arg CONF_TYPE=${CONF_TYPE:-default} \
  ghcr.io/andreitere/coolify-nginx-reverse-proxy:latest
```
