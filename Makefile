run: build
	docker run -p 80:8080 -ti --rm -v `pwd`:/source crystal

build:
	docker build --rm -t crystal .

