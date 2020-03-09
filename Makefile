DIRS = $(sort $(dir $(wildcard ./*/)))

all: test

build:
	@for d in $(DIRS) ; do \
		[ -f $$d/Makefile ] && $(MAKE) -C $$d build ; \
	done

clean:
	@for d in $(DIRS) ; do \
		[ -f $$d/Makefile ] && $(MAKE) -C $$d clean ; \
	done

test:
	@for d in $(DIRS) ; do \
		[ -f $$d/Makefile ] && $(MAKE) -C $$d test ; \
	done

.PHONY: all build clean test
