NAME = ircserv

CC = c++

FLAG = -std=c++98 -Wall -Wextra -Werror

SRC = srcs/main.cpp srcs/Server.cpp srcs/Channel.cpp \
      srcs/Utils.cpp srcs/UtilsServer.cpp srcs/commands/JOIN.cpp \
      srcs/commands/CAP.cpp srcs/commands/HELP.cpp srcs/commands/INFO.cpp srcs/commands/INVITE.cpp \
      srcs/commands/KICK.cpp srcs/commands/LIST.cpp srcs/commands/MODE.cpp srcs/commands/NOTICE.cpp \
      srcs/commands/NICK.cpp srcs/commands/OPER.cpp srcs/commands/PART.cpp \
      srcs/commands/PASS.cpp srcs/commands/PRIVMSG.cpp srcs/commands/QUIT.cpp srcs/commands/USER.cpp \
      srcs/commands/TOPIC.cpp srcs/commands/WHO.cpp srcs/commands/WHOIS.cpp

OBJDIR = obj

OBJS = $(SRC:%.cpp=$(OBJDIR)/%.o)

all: $(NAME)

$(NAME): $(OBJS)
	@$(CC) $(FLAG) $(OBJS) -o $(NAME)

$(OBJDIR)/%.o: %.cpp
	@mkdir -p $(dir $@)
	@$(CC) $(FLAG) -c $< -o $@

clean:
	@rm -rf $(OBJDIR)

fclean: clean
	@rm -f $(NAME)

re: fclean all

r: re
f: fclean
c: clean
s: start

start:
	@make c
	@sleep 0.750;
	@echo "\033[0m"   
	@echo "\033[1;34m"  
	@echo "  ____  _   _    _    _     ____  _ _ _ "
	@echo " / ___|| | | |  / \  | |   |  _ \| | | |"
	@echo " \___ \| |_| | / _ \ | |   | |_) | | | |"
	@echo "  ___) |  _  |/ ___ \| |___|  __/|_|_|_|"
	@echo " |____/|_| |_/_/   \_\_____|_|   (_|_|_)"
	@echo "\033[0m"   
	@echo "\033[1;32m"
	@sleep 0.750;
	@echo "  _____   ____  _       _ "
	@echo " |  ___| / ___|| | ___ | |"
	@echo " | |_    \___ \| |/ _ \| |"
	@echo " |  _|    ___) | | (_) |_|"
	@echo " |_|     |____/|_|\___/(_)"
	@echo "\033[0m"   
	@echo "\033[1;33m"
	@sleep 0.750;
	@echo "  ____                     _ "
	@echo " | __ )  ___  _ __  _   _ | |"
	@echo " |  _ \ / _ \| '__|| | | || |"
	@echo " | |_) |  __/| |   | |_| ||_|"
	@echo " |____/ \___||_|    \__,_|(_)"
	@echo "\033[0m"   
	@echo "\033[1;31m"
	@sleep 0.750;
	@echo "  __  __      _    _   __ _ "
	@echo " |  \/  | ___| | _| |_ / _| |"
	@echo " | |\/| |/ _ \ |/ / __| |_| |"
	@echo " | |  | |  __/   <| |_|  _|_|"
	@echo " |_|  |_|\___|_|\_\\__|_| (_)"
	@echo "\033[0m"   
	@echo "\033[1;35m"  
	@sleep 0.750;
	@echo "Project by:"
	@echo "\033[1;34m"  
	@echo "emsakar, mehmyild, beeren"
	@echo "\033[1;36m"  
	@echo "at 42 Kocaeli\033[0m"
	@sleep 0.750;
	@make all

