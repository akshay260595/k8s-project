#uvicorn main:app --reload
from fastapi import FastAPI, Request
from fastapi.templating import Jinja2Templates

app = FastAPI()  # Corrected the assignment
templates = Jinja2Templates(directory="/code")  # Directory where your HTML templates are stored

@app.get("/")
def from_post(request: Request):
    return templates.TemplateResponse('from.html', context={'request': request})  # Fixed the 'context' assignment
