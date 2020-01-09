# An agreed way to generate self-signed TLS certificates?

- Nominally for use with Eclipse Mosquitto
- Generates a X509 cert
- It is self signed!
- Run `./gen-certs.sh` and do things interactively
- I'm sure there is a way to pass in arguments to avoid interactive mode, but it typing things in manually encourages one to be careful
- For self signed certs, add the `insecure` option when launching your broker/client. This will vary between version and may/may not work

## Inspired by

http://www.steves-internet-guide.com/mosquitto-tls/
https://www.sslshopper.com/article-most-common-openssl-commands.html

## Useful commands

To check your certficate, for example to make sure it doesn't expire too soon:

`openssl x509 -in server.crt -text -noout`