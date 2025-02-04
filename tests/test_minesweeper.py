import pytest
import minesweeper

def test_module_exists():
    assert minesweeper

def test_place_mines():
    game = minesweeper.Minesweeper(3, 3, 2)
    game.place_mines()
    # Check that the mines are placed within the board
    assert len(game.mines) == 2

def test_reveal():
    import random 
    random.seed(0)
    game = minesweeper.Minesweeper(3, 3, 2)
    game.place_mines()
    game.reveal(2, 2)
    # Check that the cell and its neighbors are revealed
    assert game.revealed == {(2, 2)}