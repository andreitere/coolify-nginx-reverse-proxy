# coolify-nginx-reverse-proxy

A lightweight, flexible NGINX reverse proxy designed for seamless deployment with [Coolify](https://coolify.io/) or standalone Docker environments. Effortlessly proxy traffic to your internal services with minimal configuration.

> **Perfect for exposing services running on the same network but outside your Coolify instance!**

---

## 🚀 Features

- **Plug-and-play**: Deploy instantly with Coolify or Docker
- **Dynamic proxying**: Easily set your backend target via environment variables
- **Multiple config templates**: Choose from prebuilt NGINX configs (default, basic, authentik, immich)
- **SSL/TLS ready**: Works with your domain and Coolify's SSL automation
- **Minimal footprint**: Small, efficient Docker image

---

## ⚡ Quick Start

### Deploy on Coolify

1. **Create a resource** under your project in Coolify
2. **Docker Image**: `ghcr.io/andreitere/coolify-nginx-reverse-proxy`  
   **Tag**: `1.0.1` or `latest`
3. **Set Env Var**: `PROXY_HOST` (e.g. `http://192.168.1.21:8123`)
4. **Set Domain**: The domain you want to proxy (e.g. `https://test001.mydomain.com`)
5. **Save and redeploy**

### Run Locally with Docker

```shell
docker run \
  --rm \
  -e PROXY_HOST=http://192.168.1.21:8123 \
  -p 80:80 \
  --build-arg CONF_TYPE=${CONF_TYPE:-default} \
  ghcr.io/andreitere/coolify-nginx-reverse-proxy:latest
```

---

## ⚙️ Configuration

- **PROXY_HOST** (required): The backend service URL to proxy to (e.g. `http://192.168.1.21:8123`)
- **CONF_TYPE** (optional, build-arg): Selects the NGINX config template. Options:
  - `default` (default)
  - `basic`
  - `authentik`
  - `immich`
- **Domain**: Set in Coolify to match your public-facing domain

### Example: Custom Config
To use a different config, set the build arg:
```shell
--build-arg CONF_TYPE=authentik
```

---

## 💡 Example Use Cases
- Expose a Home Assistant instance securely to the internet
- Proxy an internal dashboard with authentication
- Use as a simple gateway for self-hosted apps
- **Expose services running on the same network but outside your Coolify instance**

---

## 🤝 Contributing
Pull requests and issues are welcome! For major changes, please open an issue first to discuss what you’d like to change.

---

## 📄 License
MIT License. See [LICENSE](LICENSE) for details.

---

## 🔗 Links
- [Coolify Documentation](https://coolify.io/docs)
- [NGINX Documentation](https://nginx.org/en/docs/)
- [Docker Hub](https://hub.docker.com/)
- [Project Repository](https://github.com/andreitere/coolify-nginx-reverse-proxy)
