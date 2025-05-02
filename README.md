# workshop-duckdb-python

## comandos necessários

```bash
pyenv local
pyenv local 3.12.5
poetry init
poetry env activate
poetry add streamlit
poetry run streamlit run app.py
```

## criando arquivo Dockerfile
```dockerfile
FROM python:3.12
RUN pip install poetry
COPY . /src
WORKDIR /src
RUN poetry install --no-root --only main
EXPOSE 8501
ENTRYPOINT ["poetry","run", "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
```

## Deploy

* ir no Render.com
* web services
* logar com github e escolher projeto
* deploy numa máquina free