#!/bin/bash

keys=0
certs=0
unknown=0

for i in material/*.pem; do
    if openssl x509 -in $i >/dev/null 2>&1; then
	echo "$i is a well-formed certifikate."
	openssl x509 -in $i -noout -text | grep Subject:
	((certs++))
    elif openssl pkey -in $i >/dev/null 2>&1; then
	echo "$i is a well-formed key."
	openssl pkey -in $i -noout -text | grep -i key
	((keys++))
    else
        echo "$i UNDETECTED:"
        head -c 60 $i
	((unknown++))
    fi
done

((total = keys + certs + unknown))

cat <<EOF

$keys keys found.
$certs certifactes found.
$unknown unknown artifacts found.

Total $total PEM artfacts.
EOF
