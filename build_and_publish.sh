git pull && \
	docker build $PWD -t a6543/cabr2_ci:latest && \
	docker push a6543/cabr2_ci:latest && \
	echo SUCCESS!!!

