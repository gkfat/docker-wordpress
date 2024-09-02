## 啟動

```bash
docker compose -p wpsite up -d
```

phpmyadmin 會運行在 `8081` port上。

## 獲取初始證書

在首次啟動 Docker Compose 之前，您需要手動獲取 Let's Encrypt 證書。您可以使用以下命令來獲取證書：

```bash
docker run -it --rm --name certbot \
  -v "./mount/certs:/etc/letsencrypt" \
  -v "./mount/nginx.conf:/etc/nginx/nginx.conf" \
  certbot/certbot certonly --webroot \
  --webroot-path=/var/www/certbot \
  --email test@example.com \
  --agree-tos \
  --no-eff-email \
  -d hahaglassesking.com
```
