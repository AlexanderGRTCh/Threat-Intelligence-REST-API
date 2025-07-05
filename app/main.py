from fastapi import FastAPI

app = FastAPI()  # Create FastAPI app instance

# Health check endpoint 
@app.get("/health")
def health_check():
    return {"status": "ok"}  # Always returns status ok when fine
