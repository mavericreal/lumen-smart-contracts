const LumenMintableToken = artifacts.require(`./LumenMintableToken.sol`)
const LumenStandardToken = artifacts.require(`./LumenStandardToken.sol`)

module.exports = (deployer) => {
  deployer.deploy(LumenMintableToken);
  deployer.deploy(LumenStandardToken);
}
