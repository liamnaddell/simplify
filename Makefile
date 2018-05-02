STACK=~/.local/bin/stack

all: build
	$(STACK) exec simplify-exe $(ARGS)

build:
	$(STACK) build
