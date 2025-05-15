run:
	docker build -t mcp-dev .
	docker run -v $(PWD):/app -it mcp-dev

test:
	pytest

lint:
	ruff app/
