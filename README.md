Battleship Game
This is a Battleship game project built using C++ with the Qt framework for its graphical user interface (GUI). The project uses QML for a declarative UI and CMake as its build system.

Project Structure
src/: Contains the core game logic in C++.

game.cpp: Manages the main game flow, players, and turns.

board.cpp: Handles the game board's state, including placing ships and tracking hits.

include/: Stores header files (*.h) for the C++ classes.

gui/: Contains the GUI components.

main.cpp: The entry point for the application, where the QML engine is initialized and the C++ Game object is exposed to QML.

main.qml: Defines the visual layout and user interface.

CMakeLists.txt: The configuration files for the build system.

run.sh: A shell script to build and run the application.

How It Works
The Game class in C++ acts as the backend logic. It inherits from QObject and uses the Q_INVOKABLE macro to expose methods to QML. The QML UI then interacts with this C++ object to display the game board, handle user clicks, and update the game state.