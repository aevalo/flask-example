update-prod-requirements:
    pip-compile --output-file=requirements.txt --strip-extras pyproject.toml

update-dev-requirements:
    pip-compile --extra=dev --output-file=requirements.dev.txt --strip-extras pyproject.toml

update-requirements: update-prod-requirements update-dev-requirements

install-requirements: update-prod-requirements
    uv pip install -r requirements.txt

install-dev-requirements: update-prod-requirements
    uv pip install -r requirements.dev.txt

run:
    flask --app flaskr run

run-debug:
    flask --app flaskr run --debug

init-db:
    flask --app flaskr init-db
