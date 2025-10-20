<img src="assets/logo.svg" alt="Open MCP for European APIs" width="200" />

[![CI](https://github.com/UlloaVillar/Open-MCP-for-European-APIs/actions/workflows/ci.yml/badge.svg)](https://github.com/UlloaVillar/Open-MCP-for-European-APIs/actions/workflows/ci.yml)

## Open MCP for European APIs

**Open-source MCP servers for European public APIs – reproducible, documented, and accessible.**

This repository is the skeleton for the “Open MCP for European APIs” project, submitted to the NGI Zero Commons Fund.. It aims to provide a clean, reproducible, and well-documented starting point to implement MCP servers integrating European public APIs.

## 🌍 Vision & Commons Alignment

This project goes beyond code. Open MCP for European APIs is part of the European Digital Commons movement:
- **Strengthens EU digital sovereignty** by providing an open, reproducible alternative to vendor-locked infrastructures.
- **Empowers developers, SMEs and civic-tech groups** with accessible MCP servers for Eurostat, ECB, Open Meteo and more.
- **Supports NGI Zero Commons goals** by ensuring all results (code, Docker images, docs) are open, auditable, and community-driven.
- **Fosters democratic access to public data**, lowering barriers so citizens and institutions can build new services on top of European APIs.

By combining reproducible engineering with a commons-first approach, this repo aligns with the **NGI mission for a human-centric, open and trustworthy Internet**.

### Deliverables
- **Base MCP server**: minimal FastAPI service and structure ready for integrations.
- **Initial integrations**: 2–3 candidates (Open Meteo, ECB, Eurostat) as placeholders.
- **Documentation**: quickstart guide, references, and GitHub Pages setup.
- **Demos**: verification endpoints and structure for examples.

### Quickstart

Requirements: Docker and Docker Compose (or `make`).

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/open-mcp-eu.git
   cd open-mcp-eu
   ```
2. Start with Docker:
   ```bash
   docker compose up --build
   # or using Makefile
   make docker-run
   ```
3. Verify the healthcheck:
   ```bash
   curl http://localhost:8000/health
   # {"status": "ok"}
   ```

For local development (without Docker):
```bash
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
uvicorn src.main:app --reload
# or
make dev
```

### Structure
- `src/` – FastAPI application (`main.py`) and base config.
- `mcp/` – integration placeholders: `open_meteo.py`, `ecb.py`, `eurostat.py`.
- `tests/` – minimal tests (e.g., `/health`).
- `docs/` – documentation prepared for GitHub Pages.
- `assets/` – static assets (logo SVG).

### License and links
- License: **GPL-3.0-or-later** (see `LICENSE`).
- Documentation: see the `docs/` folder or GitHub Pages once published.

—

Logo: provided in `assets/logo.svg`.


