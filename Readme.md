# Lexnet Installer

This script is used to install all Lexnet certificates from the official [website](https://www.abogacia.es/site/aca/descargate-e-instala-el-software-de-aca/), also it downloads Bit4Id which is a driver for the certificate adapter.

## Installation

To download the zip with all certificates I used python with selenium(tried to download with curl and wget and doesn't work). You must have install python3 and pip3.

```bash
mkdir -p /Users/$USER/_/lexnet_certs_installer
python3 -m venv venv
source venv/bin/activate
pip3 install selenium
pip3 install webdriver-manager
```

## Usage

```bash
sudo bash init.sh
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
