####RSACrypto

>RSA Encryption for Objective-C using public-private key pair, by converting a .pem to .der certificate.

###Usage

**Create a private_key.pem**

```openssl genrsa -out private_key.pem 2048```

**Create .csr  with private_key.pem**

```openssl req -new -out cert.csr -key private_key.pem```

**Create .der from .csr**

```openssl x509 -req -in cert.csr -out public_key.der -outform der -signkey private_key.pem -days 3650```