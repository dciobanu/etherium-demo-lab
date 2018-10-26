# etherium-demo-lab

## Prerequisites

nodejs and npm are required to install the web3 library:
```sh
npm install ethereum/web3.js --save
npm install -g local-web-server
```

Web3 makes API calls against a running etherium node. Install and run Ganache for this purpose:
https://truffleframework.com/ganache

## Run the demo

### Serve local dir over HTTP
```sh
ws
```

### Run Chrome with CORS disabled:

Windows:
```sh
chrome.exe --disable-web-security --user-data-dir="c:\Temporary"
```

OSX
```sh
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security --user-data-dir=~/tmp
```

### Remix

Use [Remix](http://remix.ethereum.org/) to develop, deploy and test contracts


### Demo Lab-6

Using Remix post the following transactions:
```
"0x687960b52b4865eaa4381ab839c267222d15146d", 39, "0x446f72696e", "0x4d63446f72696e"
"0x687960b52b4865eaa4381ab839c267222d151461", 30, "0x4368726973", "0x4d634368726973"
"0x687960b52b4865eaa4381ab839c267222d151462", 31, "0x457361", "0x4d63457361"
"0x687960b52b4865eaa4381ab839c267222d151463", 32, "0x4a6f65", "0x4d634a6f65"
```
