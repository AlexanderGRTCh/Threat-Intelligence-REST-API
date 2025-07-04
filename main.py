from fastapi import FastApi

# Create FastAPI app instance
app = FastApi()

# Health Check endpoint for service status
@app.get("/health")
def health_check():
    return{"status": "ok"}