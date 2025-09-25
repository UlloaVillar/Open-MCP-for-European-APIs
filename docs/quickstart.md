## Quickstart

### Requirements
- Docker and Docker Compose (recommended)
- Optional: Python 3.11+ and `make`

### Using Docker
```bash
git clone https://github.com/<your-username>/open-mcp-eu.git
cd open-mcp-eu
docker compose up --build
```

Verify the health endpoint:
```bash
curl http://localhost:8000/health
# {"status": "ok"}
```

### Local development
```bash
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
uvicorn src.main:app --reload
```

Run tests:
```bash
pytest -q
```


