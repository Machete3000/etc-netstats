build:
	docker build -t cblockchain/ethstats .

push:
	docker push cblockchain/ethstats

release: build push

run:
	docker run --rm -p 127.0.0.1:3000:3000 cblockchain/ethstats
