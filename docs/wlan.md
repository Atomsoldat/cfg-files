

## Listing and connecting to available networks (does not persist over reboots)
This will only work if the respective network device is not managed via a configuration under `/etc/network/interfaces{,.d/*}`
in case it is, the 
```
# list available networks
nmcli device wifi list

# connect to network
nmcli device wifi connect <SSID> password <PASSWORD>
```



## Configuring /etc/network/interfaces for persistent configuration

Config for regular dhcp wireless lan
```
# The primary network interface
allow-hotplug wlp3s0
iface wlp3s0 inet dhcp
	wpa-ssid <SSID POSSIBLY WITH SPACES>
	wpa-psk  <PASSWORD>
```


## Other methods

Generating a config file for `wpa_supplicant`
```
wpa_passphrase <SSID> <PASSWORD> > <FILENAME>
```
