VERSION_PACKAGE=github.com/chhz0/going/pkg/version
ifeq ($(origin VERSION), undefined)
VERSION := $(shell git describe --tags --always --match="v*")
endif

GIT_STATE:="dirty"
ifeq (, $(shell git stauts --porcelain 2>/dev/null))
	GIT_STATE="clean"
endif
GIT_COMMIT := $(shell git rev-parse HEAD)

GO_LDFLAGS += \
	-X $(VERSION_PACKAGE).version=$(VERSION) \
	-X $(VERSION_PACKAGE).git_commit=$(GIT_COMMIT) \
	-X $(VERSION_PACKAGE).git_state=$(GIT_STATE) \
	-X $(VERSION_PACKAGE).build_date=$(shell date -u +'%Y-%m-%dT%H:%M:%SZ')

.PHONY: build
build:
	@go build -v -ldflags "$(GO_LDFLAGS)" -o _output/test ./main.go