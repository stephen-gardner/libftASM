#!/usr/bin/make -f

################################################################################
# SETTINGS                                                                     #
################################################################################

NAME = libfts.a
AR = ar
ARFLAGS = -rcs
AS = nasm
ASFLAGS += -f macho64
SRC_DIR = src
OBJ_DIR = obj

# [ BASE ]

SRC = \
	bzero\
	cat\
	isalnum\
	isalpha\
	isascii\
	isdigit\
	isprint\
	memcpy\
	memset\
	puts\
	strcat\
	strchr\
	strcmp\
	strdup\
	strlen\
	strsplit\
	strsub\
	strtrim\
	tolower\
	toupper

OBJ = $(patsubst %, $(OBJ_DIR)/ft_%.o, $(SRC))

################################################################################
# COLORS                                                                       #
################################################################################

NC = \033[0m
GREEN = \033[1;32m
RED = \033[1;31m
YELLOW = \033[1;33m

################################################################################
# RULES                                                                        #
################################################################################

all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(ARFLAGS) $@ $(OBJ)
	@echo "$(GREEN)DONE$(NC)"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	@mkdir -p $(dir $@)
	@$(AS) $(ASFLAGS) $< -o $@

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -f $(NAME)
	@echo "$(RED)$(NAME) removed$(NC)"

re: fclean all
