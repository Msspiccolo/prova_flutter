from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from typing import List

app = FastAPI()

# Configuração do CORS
origins = [
    "http://localhost:3000",  # Adicione outras origens conforme necessário
    "http://localhost:8000",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class Produto(BaseModel):
    id: int
    nome: str
    preco: float

produtos = [
    Produto(id=1, nome="Brinquedos", preco=10.00),
    Produto(id=2, nome="Produto B", preco=20.00),
    Produto(id=3, nome="Produto C", preco=30.00),
]

@app.get("/produtos", response_model=List[Produto])
async def get_produtos():
    return produtos  # Retorna a lista de produtos em formato JSON

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)
