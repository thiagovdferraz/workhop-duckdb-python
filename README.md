# Workshop Python e Duckdb + Docker e Streamlit

## Parte 1 - Deploy app streamlit

### Configuração ambiente

```bash
pyenv local
pyenv local 3.12.5
poetry init
poetry env activate
poetry add streamlit
poetry run streamlit run app.py
```

### Criar arquivo app.py
```python
import streamlit as st

def main():
    st.write("Ola Jornada de dados")

if __name__ == "__main__":
    main()
```

### Criar Dockerfile
```dockerfile
FROM python:3.12
RUN pip install poetry
COPY . /src
WORKDIR /src
RUN poetry install --no-root --only main
EXPOSE 8501
ENTRYPOINT ["poetry","run", "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
```

### Deploy no Render

* ir no Render.com
* web services
* logar com github e escolher projeto
* deploy numa máquina free

### Deploy no Digital Ocean

* ir no cloud.digitalocean.com
* create >> app platforms
* logar com github e escolher projeto
* deploy numa máquina free (se existir) ou custo benefício


## Parte 2 - Duckdb

Continua [aqui](https://github.com/thiagovdferraz/duckdb-zero-ao-deploy).