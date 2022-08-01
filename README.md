# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
GAS_REPORT=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
# Step 1

You need to create a Alchemy account to use their tools.

Go to https://www.alchemy.com/ and create an account.

After you register you will see "Create App" page.

Fill the blanks with the inputs whatever you want.

Select network as a ```Rinkeby```.

You should see your keys. We will need the ```HTTP key```.

# Step 2

Create your Metamask wallet and add some ```RinkebyETHs```. 

https://metamask.io/

https://www.rinkebyfaucet.com/
 
 # Step 3
 
 Set Up Hardhat Project:
 
 Open your project folder and use the commands below.
 
 ```shell
npm init -y
npm install dotenv
npm install --save-dev hardhat
npx hardhat
```

After that select ```Create a Javascript Project```.

Select "yes" for all the options.

Then prepare your ```hardhat.config.js``` file.
```shell
require('@nomiclabs/hardhat-waffle');
require('dotenv').config();

module.exports = {
  solidity: "0.8.0",
  networks: {
    rinkeby: {
      url: `${process.env.ALCHEMY_RINKEBY_URL}`,
      accounts: [`0x${process.env.RINKEBY_PRIVATE_KEY}`],
    } 
  }
};
```

# Step 4 

Set up your ```.env```.
```shell
ALCHEMY_RINKEBY_URL=Your HTTP key from Alchemy.
RINKEBY_PRIVATE_KEY=Your secret key from Metamask.
```
