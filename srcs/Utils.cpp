#include "../includes/Utils.hpp"

void Utils::writeMessage(int socket, std::string const& message)
{
    if ((write(socket, message.c_str(), message.length())) < 0)
        std::cout << "Message cannot send!" << std::endl;
}

void Utils::writeAllMessage(std::vector<int> const& fds, std::string const& message)
{
    for (std::vector<int>::const_iterator it = fds.begin(); it != fds.end(); ++it) {
        writeMessage(*it, message);
    }
}

std::string Utils::intToString(int n)
{
    std::stringstream ss;
    ss << n;
    std::string str = ss.str();
    return str;
}


int Utils::portIsValid(std::string const& port)
{

    for (size_t i = 0; i < port.size(); ++i) 
    {
        if (!isdigit(port[i]))
            return 0;
    }

    if (atoi(port.c_str()) < 1024 || atoi(port.c_str()) > 49151)
        return 0;
    return 1;
}

std::string Utils::welcome()
{
    std::string ascii_art = "     \n\nWelcome to emsakar-mehmyild-beeren Server!         \n";
        ascii_art +=
        "  _                _                         _             \n"
        " | |              | |                       | |            \n"
        " | |     ___   ___| | _____ _ __ ___   ___  | |_ ___       \n"
        " | |    / _ \\ / __| |/ / _ \\ '_ ` _ \\ / _ \\ | __/ _ \\ \n"
        " | |___| (_) | (__|   <  __/ | | | | |  __/ | || (_) |     \n"
        " |______\\___/ \\___|_|\\_\\___|_| |_| |_|\\___|  \\__\\___/ \n"
        "                                                        \n"
        "                                                        \n"
        "  _                 _    _  __                           \n"
        " | |               | |  (_)/ _|                          \n"
        " | | ___  _ __ __ _| | ___| |_ ___ _ __                  \n"
        " | |/ _ \\| '__/ _` | |/ / |  _/ _ \\ '__|                \n"
        " | | (_) | | | (_| |   <| | ||  __/ |                   \n"
        " |_|\\___/|_|  \\__,_|_|\\_\\_|_| \\___|_|                   \n"
        "                                                        \n"
        "                                                        \n";
    return ascii_art;
}
