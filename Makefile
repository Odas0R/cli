build:
	go build -o your_cmd ./cmd/your_cmd/main
test:
	# TODO: use what you would like here
watch:
	# TODO: use what you would like here
prepare:
	@read -p "Enter the new command name: " newCmdName; \
	find . -type f -name '*.go' -exec sed -i '' "s/package cmd/package $$newCmdName/g" {} +; \
	mv cmd/your_cmd cmd/$$newCmdName

.PHONY: build test watch
