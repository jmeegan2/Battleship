#ifndef BOARD_H
#define BOARD_H

#include <vector>

class Board {
public:
    Board(int rows, int columns);

    int getValue(int row, int column) const;
    void setValue(int row, int column, int value);

    void print() const;

    int getRows() const { return rows; }          // add this
    int getColumns() const { return columns; }    // and this

private:
    bool checkCoords(int r, int c) const;
    bool isValidValue(int value) const;
    std::vector<std::vector<int>> grid; //create a vector of vectors
    int rows;
    int columns;
};

#endif
