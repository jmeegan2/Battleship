# Define source and output files
SOURCE="src/main.cpp src/board.cpp src/game.cpp"
OUTPUT="build/myprogram"

# Compile and run, or show an error
g++ $SOURCE -o "$OUTPUT" && ./"$OUTPUT" || echo "Compilation failed."