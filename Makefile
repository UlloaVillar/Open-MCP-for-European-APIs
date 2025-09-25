PY=python3
PIP=pip

.PHONY: dev test docker-build docker-run

dev:
	uvicorn src.main:app --reload

test:
	pytest -q

docker-build:
	docker build -t open-mcp-eu:latest .

docker-run: docker-build
	docker compose up --build


