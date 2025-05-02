FROM python:3.12
RUN pip install poetry==1.6.1
COPY pyproject.toml poetry.lock /src/
COPY . /src
WORKDIR /src
RUN poetry config virtualenvs.create false
RUN poetry config repositories.pypi.url https://pypi.org/simple
RUN poetry install
EXPOSE 8501
ENTRYPOINT ["poetry", "run", "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]