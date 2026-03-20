
## Configuring /etc/network/interfaces for persistent configuration on Debian

Config for regular dhcp wireless lan
```
# The primary network interface
allow-hotplug wlp3s0
iface wlp3s0 inet dhcp
	wpa-ssid <SSID POSSIBLY WITH SPACES>
	wpa-psk  <PASSWORD>
```


```
sudo ifup wlp3s0
sudo ifdown wlp3s0
```

