# !bin/bash
docker run -it --rm --name certbot \
  -v "./mount/certs:/etc/letsencrypt" \
  -v "./mount/nginx.conf:/etc/nginx/nginx.conf" \
  certbot/certbot certonly --webroot \
  --webroot-path=/var/www/certbot \
  --email test@example.com \
  --agree-tos \
  --no-eff-email \
  -d hahaglassesking.com