install :
	@echo "Upgrading pip & Installing dependencies..."
	python3 -m pip install --upgrade pip
	pip install -r requirements.txt

lint :
	@echo "Running lint..."
	pylint --rcfile pylint.rc minesweeper

tests : lint
	@echo "Running tests..."
	PYTHONPATH=.
	export PYTHONPATH
	pytest -v

.PHONY: tests lint install
