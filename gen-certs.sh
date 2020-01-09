# Makes a CA (yourself) and then generates certificates
# NOTE! Don't make the details of the CA the same as the certificate, things could go wrong
# The last command is a verifcation command, it should print 'OK'

openssl genrsa -des3 -out ca.key 2048 && \
openssl req -new -x509 -days 1826 -key ca.key -out ca.crt && \
openssl genrsa -out server.key 2048 && \
openssl req -new -out server.csr -key server.key && \
openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 360 && \
openssl verify -CAfile ca.crt server.crt