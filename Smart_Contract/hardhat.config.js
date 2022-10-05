// https://eth-mainnet.g.alchemy.com/v2/o8YV7I2gIhmXHr9bhqTpZmzvad-sSu27

require('@nomiclabs/hardhat-waffle') ;// used to build smart contract test using waffle

module.exports = {
  solidity:'0.8.9',
  networks:{
    goerli:{
      url:"https://eth-goerli.g.alchemy.com/v2/O8Wwwea7NEOabQyAL4JO0IPu1GoBYrx9",
      accounts:['a4bbee8a9a8ef5c90f577df72e931febe494ddd2808fb38233050d9e2d5cc462']
    }
  }
}



