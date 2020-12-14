# forge-server-template
Simple-to-use template for running a 1.12.2 Minecraft Forge server
## TCP Tunnelling
If you don't want to setup Port Forwarding, you can use TCP tunnelling instead:
1) Make sure you have "server-ip=localhost" in your server.properties file
2) Run install_node.bat to install NodeJS and Telebit utility for TCP tunnelling
3) Verify your email
4) Run run_tunnel.bat (this step is required after every pc reboot)

TCP Tunnelling is only required for playing with friends that aren't on your local network, otherwise just put your gateway ip in the "server-ip=" property and use it to connect to your server

## Mods
In this template, the Forge server is installed but not run yet. If you have any terrain-changing mods, you should put them in the mods/ directory first and then start the server, so the new modded world is generated
