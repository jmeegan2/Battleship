#include "../include/board.h"
#include <iostream>

enum BoardValues {
    EMPTY_SPACE = 0,
    PLAYER_ONE = 1,
    PLAYER_TWO = 2
};


Board::Board(int r, int c) : rows(r), columns(c)
{
    grid.resize(rows, std::vector<int>(columns, 0));
}

int Board::getValue(int r, int c) const
{
    if (checkCoords(r, c))
    {
        return grid[r][c];
    };

    return -1; // invalud
}

bool Board::checkCoords(int r, int c) const
{ // private helper only can be used inside other class methods
    return (r >= 0 && r < rows && c >= 0 && c < columns);
}


bool Board::isValidValue(int value) const
{
    return (value == EMPTY_SPACE || value == PLAYER_ONE || value == PLAYER_TWO);
}


void Board::setValue(int r, int c, int value)
{
    if (checkCoords(r, c) && isValidValue(value))
    {
        grid[r][c] = value;
    }
}

void Board::print() const
{
    for (int i = 0; i < rows; i++)
    {
        for (int j = 0; j < columns; j++)
        {
            std::cout << grid[i][j] << " ";
        }
        std::cout << std::endl;
    }
}
