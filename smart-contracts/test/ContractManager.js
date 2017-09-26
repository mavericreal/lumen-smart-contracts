'use strict';
const assertJump = require('./helpers/assertJump');

var ContractManager = artifacts.require('../contracts/ContractManager.sol');
var DummyContractMock = artifacts.require("./helpers/DummyContractMock.sol");

contract('ContractManager', function(accounts) {
  let contractManager;

  beforeEach(async function() {
    contractManager = await ContractManager.new();
  });

  it('should add a contract', async function() {
    let name = 'DummyContract1'
    let dummyContractMock = await DummyContractMock.new();
    await contractManager.addContract(name, dummyContractMock.address);
    let contractAddress = await contractManager.getContract.call(name);
    assert.isTrue(contractAddress == dummyContractMock.address);
  });

  it('should remove an existing contract', async function() {
    let name = 'DummyContract1'
    let dummyContractMock = await DummyContractMock.new();
    await contractManager.addContract(name, dummyContractMock.address);
    await contractManager.removeContract(name);
    let contractAddress = await contractManager.getContract.call(name);
    assert.isTrue(contractAddress != dummyContractMock.address);
  });

});
