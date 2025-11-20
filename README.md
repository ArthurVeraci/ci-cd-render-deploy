# 🚀 CI/CD Pipeline com Docker + GitHub Actions + Deploy no Render

Este projeto demonstra um pipeline completo de **CI/CD**, utilizando:

- **GitHub Actions** para testes e build automatizados  
- **Docker** para empacotamento da aplicação  
- **Render** para deploy automático em produção  
- **Flask** como aplicação simples de exemplo

---

## 📂 Estrutura do Projeto
├── app.py
├── Dockerfile
├── requirements.txt
├── tests
│ └── test_app.py
└── .github
└── workflows
└── ci.yml


---

## 🎯 Objetivo do Projeto

Criar um fluxo de entrega contínua (CI/CD) onde:

1. A cada **push ou PR na branch main**, o GitHub Actions:
   - instala dependências
   - executa os testes
   - builda a imagem Docker
   - envia para o Docker Hub

2. O **Render** detecta a nova imagem e faz:
   - pull automático da imagem atualizada
   - deploy em produção

Resultado: **deploy 100% automatizado de ponta a ponta**.

---

## ⚙️ Tecnologias Utilizadas

- Python 3.10  
- Flask  
- Pytest  
- Docker  
- GitHub Actions  
- Render (Web Service com Docker)

---

## 🧪 Testes Automatizados

O projeto possui um teste simples para validar:

- a rota principal `/`
- o status HTTP
- o conteúdo retornado pela aplicação

Arquivo: `tests/test_app.py`  
Executa automaticamente no pipeline.

---

## 🐳 Docker

### Dockerfile utilizado:

```dockerfile
FROM python:3.10-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]

