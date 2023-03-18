.PHONY: build run clean chown stop down

build:
	docker build . -t nto-nginx

run:
#	mkdir -p volumes/data/ volumes/pgadmin/
	docker compose up

gen_cert:
	cat ssl/local_cer.pem ssl/ca_cer.pem > ssl/cer.pem


# clean:
#	rm -rf ./volumes/

# chown:
#	chown -R 5050:5050 ./volumes/pgadmin/

logs:
	docker compose logs

stop:
	docker compose stop

down:
	docker compose down
