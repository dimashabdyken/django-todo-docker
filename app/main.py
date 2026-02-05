from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def read_root():
    return {"FastApi project"}


@app.get("/health")
async def health_check():
    return {"status": "ok"}
