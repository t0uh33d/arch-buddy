CLI_TOOL_NAME = arch-buddy

build:
	@dart compile exe bin/arch_buddy.dart -o ./bin/${CLI_TOOL_NAME}

run:
	@dart run

run-exec: build
	@./bin/${CLI_TOOL_NAME}

globalise: build
	@sudo mv ./bin/${CLI_TOOL_NAME} /usr/local/bin/
	@sudo chmod +x /usr/local/bin/${CLI_TOOL_NAME}