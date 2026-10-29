# flask-example
Testing flask

## First time setup

Create virtual environment
```shell
uv venv .venv
```

Activate virtual environment
```shell
. .venv/bin/activate
```

Install production requirements
```shell
uv pip install -r requirements.txt
```

Install development requirements. This also includes production requirements, so no need to install those with this.
```shell
uv pip install -r requirements.dev.txt
```

Initialize the database
```shell
flask --app flaskr init-db
```

## Running the Flask app

Run the following command:
```shell
flask --app flaskr run
```

Run the following command to use debug mode:
```shell
flask --app flaskr run --debug
```
