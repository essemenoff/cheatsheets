#!/bin/bash

# install sops and age

# action!!!

# 
cat << EOF0 >> file.yaml
---
hello: []
EOF0

mkdir test_sops
cd test_sops

# create age private key
rm -f age.key
age-keygen -o age.key

# WTF?                  ---\
# sops --encrypt --encrypted-regex '^(data|stringData)$' --in-place test_secret.yaml

# TBD
# cat << EOF >>
# ---
# creation_rules:
#   - path_regex: \.*prod*\.yaml$
#     pgp: 0D955807E53158CB209E3A5645369266A697BDC7
#   - path_regex: \.*dev*\.yaml$
#     pgp: 48EF05B385B1DA8713ADCA7694D3BD5F3B78E0F7
# EOF

# public key
export SOPS_AGE_RECIPIENTS=age1kngqw5grxm8gretfy9c6tp3wnxhrqp0qngfllw9sxx60v923s5yq63y3tt
# private key
export SOPS_AGE_KEY_FILE=age.key

# Encrypt
sops --encrypt  file.yaml > encrypted.yaml
# or
sops --encrypt  --in-place file.yaml


# Decrypt
sops --decrypt encrypted.yaml

# End