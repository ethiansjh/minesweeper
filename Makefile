install :
	@echo "Installing dependencies..."
	pip install --upgrade pip
	pip install -r requirements.txt

lint : install
	@echo "Running lint..."
	pylint minesweeper

tests : lint
	@echo "Running tests..."
	PYTHONPATH=.
	export PYTHONPATH
	pytest -v

.PHONY: tests lint install
