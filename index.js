var Web3 = require('web3');

if (typeof web3 !== 'undefined') {
    web3 = new Web3(web3.currentProvider);
} else {
    // set the provider you want from Web3.providers
    web3 = new Web3(new Web3.providers.HttpProvider("http://127.0.0.1:7545"));
}

web3.eth.defaultAccount = web3.eth.accounts[0];
var abi = [
            {
                "constant": false,
                "inputs": [
                    {
                        "name": "_fname",
                        "type": "string"
                    },
                    {
                        "name": "_age",
                        "type": "uint256"
                    }
                ],
                "name": "setEmployee",
                "outputs": [],
                "payable": false,
                "stateMutability": "nonpayable",
                "type": "function"
            },
            {
                "constant": true,
                "inputs": [],
                "name": "getEmployee",
                "outputs": [
                    {
                        "name": "",
                        "type": "string"
                    },
                    {
                        "name": "",
                        "type": "uint256"
                    }
                ],
                "payable": false,
                "stateMutability": "view",
                "type": "function"
            }
    ];
var employeeContract = web3.eth.contract(abi);
var employee = employeeContract.at('0xfb627fd0bfa82c8bf2c727d6e7c257810d3274ac');
employee.setEmployee('Numele', 30);