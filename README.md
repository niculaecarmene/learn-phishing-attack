# Sample Hardhat Project

In this project I am playing around with phishing attack vulnerabilities

# Steps to create project - run the commands below

mkdir learn-phishing-attack
cd learn-phishing-attack
npm init --yes
npm install --save-dev hardhat

// only for Windows users
npm install --save-dev @nomicfoundation/hardhat-toolbox

npx hardhat

npm install @openzeppelin/contracts

npm install dotenv

npx hardhat compile

# Contract explanations

    SimpleSmartWallet Contract - smart wallet simulater
        ✔ transfer - use to transfer money if you are the originater 
    
    AttackSmartWallet Contract
        ✔ call SimpleSmartWallet in the constructor so you can overwrite the originater 
        ✔ receive - steals the money of of the SimpleSmartWallet Contract

# Tests - test/tests.js

    Test approve/transfer tokens
        ✔ deposit some ETH in the SimpleSmartWallet Contract
        ✔ trick the owner of the SimpleSmartWallet Contract to send some ETH to the AttackSmartWallet
        ✔ like this the origineter is overwritten and the AttackSmartWallet can take all the ETH 

# Test - run the command below
npx hardhat test test/tests.js

npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
