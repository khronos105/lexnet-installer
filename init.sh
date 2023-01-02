#!/bin/bash

# Download all ACA Certs from Lexnet
source venv/bin/activate

python3 main.py

# Install all ACA Certs from Lexnet
cd downloads

unzip -o ACA_certs_todos.zip
rm ACA_certs_todos.zip

for cert in $(find . -name "*.crt")
do
    sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain $cert
done


# Install Bit4Id
unzip -o TarjetaACA_MacMonterey.zip
installer=$(find . -name "*.dmg")
hdiutil mount $installer
echo "Select volume to install Bit4Id:"
echo $(ls /Volumes)
read main_volume
path_to_install="/Volumes/$main_volume"
echo "Package will be installed in $path_to_install"
sudo installer -package /Volumes/bit4id-middleware-user/bit4id-middleware-signed.pkg -target $path_to_install
hdiutil unmount "/Volumes/bit4id-middleware-user"