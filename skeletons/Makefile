
CC=clang
CC_FLAGS=-Wall -Wextra -pedantic
SRC=src
OBJ=obj
SRCS=$(wildcard $(SRC)/*.c)
OBJS=$(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(SRCS))
BIN=bin/main
ARGS=


all: $(BIN)

$(BIN): $(OBJS)
	$(CC) $(CC_FLAGS) $(OBJS) -o $@

$(OBJ)/%.o: $(SRC)/%.c
	$(CC) $(CC_FLAGS) -c $< -o $@

run: $(BIN)
	./$(BIN) $(ARGS)

format:
	clang-format -i $(SRCS)

clean: 
	$(RM) -r $(BIN) $(OBJ)/*

