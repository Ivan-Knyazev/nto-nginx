.PHONY: check run stop down


check:
	docker compose up

run:
	docker compose up -d

stop:
	docker stop nto-nginx

down:
	docker compose down


# include .env
# export

# test:
# 	mkdir -p certbot/www certbot/conf/
# 	docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --email ${EMAIL} --agree-tos --no-eff-email --dry-run -d ${DOMAIN}

# create:
# 	mkdir -p certbot/www certbot/conf/
# 	docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --email ${EMAIL} --agree-tos --no-eff-email -d ${DOMAIN}
# 	# --staging
