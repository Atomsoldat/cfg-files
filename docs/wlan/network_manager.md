## Network Manager
This will only work if the respective network device is not managed via a configuration under `/etc/network/interfaces{,.d/*}`
in case it is, remove the configuration and run `systemctl restart NetworkManager`. The reason for this is, that in the debian stock configuration under `/etc/NetworkManager/NetworkManager.conf` an `ifupdown` section states that interfaces defined in `/etc/network/interfaces` should not me managed by it.


### Listing and connecting to available connections

```
# list devices
nmcli device show
# list available networks
nmcli device wifi list
# list configured connections
nmcli connection show

# (de)activate a previously configured connection
nmcli connection up|down <CONNECTION_NAME>
```

### Configuring Network Manager Connections

```
# this one should also work, but there currently seem to be some issues with network manager
nmcli device wifi connect <SSID> password <PASSWORD>
# this one works though
nmcli device wifi connect <SSID> --ask
```

Autoconnection is on by default, but here's how to modify connection settings

```
nmcli connection modify <CONNECTION NAME> connection.autoconnect true 
```

```
# Query parameters for all connections
nmcli -f name,autoconnect connection show

# Detailed Information about all connection parameters
nmcli connection show <CONNECTION_NAME>

```
