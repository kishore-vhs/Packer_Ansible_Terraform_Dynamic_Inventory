# Packer
- Download Packer from packer.io into /usr/local/bin
- Create packer.json
- Create packer-vars.json
- Validate the json.
```
packer validate -var-file packer-vars.json packer.json
```
- Build the packer image.
```
packer build -var-file packer-vars.json packer.json
```