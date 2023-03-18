# Nginx Deployment


## Env
Run `cp .env.example .env`

Edit `.env`.


## SSL
Put CA certificate to `ssl/ca_cer.pem`.

Put local certificate to `ssl/local_cer.pem`

Put private key to `ssl/key.pem`

Run `make gen_cert`

### Run
`make run`

### Stop
`make stop`

### Down
`make down`
