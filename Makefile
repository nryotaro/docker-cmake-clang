BASE_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
IMAGE = nryotaro/clangcmake
TAG ?= latest

help: ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

build:  ## Build the Docker image with TAG.
	docker build --rm -t $(IMAGE):$(TAG) -f $(BASE_DIR)/Dockerfile  $(BASE_DIR)
