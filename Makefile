.PHONY: build serve clean check-zola

check-zola:
	@which zola > /dev/null || (echo "Error: Zola is not installed. Please install it first using 'cargo install zola'" && exit 1)

build: check-zola
	zola build

serve: check-zola
	zola serve

clean:
	rm -rf public/
