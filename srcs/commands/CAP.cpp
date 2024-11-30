#include "../../includes/Server.hpp"

void Server::Cap(std::vector<std::string>& params, Client& cli)
{
    if (params[0] == "LS")
        cli._isCap = HEX; // buranın ınfodaki komutuna bak.
    else
        cli._isCap = NC;
}
