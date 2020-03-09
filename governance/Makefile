NAME = $(shell grep -e "^name:" daml.yaml | cut -d ' ' -f2)
VERSION = $(shell grep -e "^version:" daml.yaml | cut -d ' ' -f2)

TARGET_DIR = .daml
TARGET = $(TARGET_DIR)/dist/$(NAME)-$(VERSION).dar

ifeq ($(OS),Windows_NT)
DAML = daml.cmd
else
DAML = daml
endif

all: test

build: $(TARGET)

$(TARGET): daml/*.daml daml.yaml
	$(DAML) build

clean:
	rm -rf "$(TARGET_DIR)"

test: build
	$(DAML) test --color

.PHONY: all build clean test
