#include "../include/game.h"

Game::Game(int r, int c, QObject* parent) 
    : QObject(parent), gameBoard(r, c)
{
    //more logic will go here later 
}

void Game::printBoard() {
    gameBoard.print();
}

int Game::rows() const {
    return gameBoard.getRows();
}

int Game::columns() const {
    return gameBoard.getColumns();
}

int Game::cellState(int row, int col) const {
    return gameBoard.getValue(row, col);
}