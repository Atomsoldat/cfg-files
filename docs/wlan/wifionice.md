Make sure docker networks are not messing with DNS, the DNS server may have been assigned an address in 172.x.x.x

Check with
```
cat /etc/resolv.conf

ip route

```

If captive portal detection in the browser does not work, Resolve
`login.wifionice.de` using e.g. `nslookup` manually, and visit the page via http. ignore the certificate warning using `advanced`
