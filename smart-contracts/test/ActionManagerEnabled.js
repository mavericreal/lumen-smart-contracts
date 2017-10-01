'use strict';
const assertJump = require('./helpers/assertJump');

var ContractManager = artifacts.require('../contracts/ContractManager.sol');
var DummyActionManager = artifacts.require('./helpers/DummyActionManager.sol');

contract('ActionManagerEnabled', function(accounts) {
  let contractManager, dummyActionManager;

  beforeEach(async function() {
    contractManager = await ContractManager.new();
    dummyActionManager = await DummyActionManager.new();
    await contractManager.addContract('actions', dummyActionManager.address);
  });

  it('should be able to set the owner this contract', async function() {
    let owner = await dummyActionManager.OWNER();
    assert.isTrue(owner === contractManager.address);
  });

  it('should remove an existing contract', async function() {
    let contractAddress = await contractManager.getContract.call('actions');
    let result = await dummyActionManager.hasActionManagerRole.call({from: dummyActionManager.address});
    assert.isTrue(result);
  });

});
