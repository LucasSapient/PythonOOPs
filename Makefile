POETRY_RUN := poetry run
LINT_FOLDERS=scripts/tests scripts/scripts

test:
	@${POETRY_RUN} pytest ${LINT_FOLDERS} --doctest-modules

autolint:
	@${POETRY_RUN} autopep8 -r -i ${LINT_FOLDERS}
	@${POETRY_RUN} unify -r -i ${LINT_FOLDERS}
	@${POETRY_RUN} isort ${LINT_FOLDERS}

install:
	pip install poetry
	poetry install

lint:
	@${POETRY_RUN} flake8 ${LINT_FOLDERS}

shell:
	poetry shell
