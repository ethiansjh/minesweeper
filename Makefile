.PHONY: tests

tests :
	@echo "Running tests..."
    PYTHONPATH=. && \
    echo $${PYTHONPATH} && \
    pytest -v

init_git :
	@echo "initializing git repository..."
	git init
	git add .
	git commit -m "Initial commit"
	git branch -M main
	git remote add origin https://github.com/ethiansjh/minesweeper.git
	git push -u origin main

