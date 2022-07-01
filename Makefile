ROOT := $(shell git rev-parse --show-toplevel)
FLUTTER := $(shell which flutter)
FLUTTER_BIN_DIR := $(shell dirname $(FLUTTER))
FLUTTER_DIR := $(FLUTTER_BIN_DIR:/bin=)
DART := $(FLUTTER_BIN_DIR)/cache/dart-sdk/bin/dart

# Flutter
.PHONY: analyze
analyze:
	$(FLUTTER) analyze

.PHONY: format
format:
	$(FLUTTER) format .

.PHONY: test
test:
	$(FLUTTER) test

.PHONY: codegen
codegen:
	$(shell flutter pub run build_runner build --delete-conflicting-outputs)

# Git
.PHONY: fetch-main
fetch-main:
	$(shell git fetch origin main)

.PHONY: rebase-main
rebase-main:
	$(shell git pull --rebase origin main)