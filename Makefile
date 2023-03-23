.PHONY: build run gen_cert logs stop down


build:
	docker build . -t nto-nginx

run:
	docker compose up -d

gen_cert:
	cat ssl/local_cer.pem ssl/ca_cer.pem > ssl/cer.pem

logs:
	docker compose logs

stop:
	docker compose stop

down:
	docker compose down
