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
