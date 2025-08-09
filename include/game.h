#ifndef GAME_H
#define GAME_H

#include <QObject>  
#include <string>
#include "board.h"

class Game : public QObject {
    Q_OBJECT

public:
    Game(int r, int c, QObject* parent = nullptr);

    Q_INVOKABLE void printBoard();

    Q_PROPERTY(int rows READ rows CONSTANT)
    Q_PROPERTY(int columns READ columns CONSTANT)

    int rows() const;          // <-- declare
    int columns() const;       // <-- declare

    Q_INVOKABLE int cellState(int row, int col) const;

private:
    Board gameBoard;
};

#endif