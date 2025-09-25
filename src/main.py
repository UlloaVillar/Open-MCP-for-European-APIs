from fastapi import FastAPI


app = FastAPI(title="Open MCP for European APIs")


@app.get("/health")
def health() -> dict:
    return {"status": "ok"}


