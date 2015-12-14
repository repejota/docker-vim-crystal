run: build
	docker run -p 80:8080 -ti --rm -v `pwd`:/source rust

build:
	docker build --rm -t rust .

