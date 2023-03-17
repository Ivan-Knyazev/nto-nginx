# Nginx Deployment


## 1. Env
Run:
```bash
cp .env.example .env
```

Edit `.env`.


## 2. Generate SSL sertificate from OpenSSL
* Optional

Edit `domain`
```bash
openssl req -x509 -newkey rsa:4096 -sha256 -days 365 -nodes \
  -keyout nginx/ssl/domain.key -out nginx/ssl/domain.crt -subj "/CN=domain.com" \
  -addext "subjectAltName=DNS:domain.com,DNS:www.domain.net"
```


## 3. SSL
Run for create directory for certificates
```bash
mkdir nginx/ssl
```
Put SSL Certificate and SSL Key `to nginx/ssl/`


## 4. Docker
### Check
For check logs in really time
```bash
make build
```

### Start
```bash
make run
```

### Stop
```bash
make stop
```

### Down
```bash
make stop
```


## 5. Add sertificate to Linux (Ubuntu)
* In local machine (to make trusted)

https://winitpro.ru/index.php/2022/09/28/ustanovit-kornevoj-doverennyj-sertifikat-ca-linux/



<!-- No work ...
```bash
openssl req -x509 -nodes -days 365 - subj "/C=RU/ST=Ural/O=domain, Inc./CN=domain.ru" -addext "subjectAltName=DNS:domain.ru" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
``` -->
