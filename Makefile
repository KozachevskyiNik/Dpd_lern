.PHONY: install

.PHONY: pre-commit-setup
pre-commit-setup:
	pip install pre-commit
	pre-commit install

.PHONY: venv
venv:
	python -m venv .dbtenv
	. ./.dbtenv/bin/activate
	pip install --upgrade pip
	python -m pip install --no-cache-dir -r requirements-prod.txt

