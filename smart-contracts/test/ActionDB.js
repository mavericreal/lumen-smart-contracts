'use strict';
const assertJump = require('./helpers/assertJump');

var ActionDB = artifacts.require('../contracts/ActionDB.sol');
var DummyActionMock = artifacts.require("./helpers/DummyActionMock.sol");
var ContractManager = artifacts.require('../contracts/ContractManager.sol');
var DummyActionManager = artifacts.require('./helpers/DummyActionManager.sol');

contract('ActionDB', function(accounts) {
  let actionDB, contractManager, dummyActionManager;

  beforeEach(async function() {
    actionDB = await ActionDB.new();
    contractManager = await ContractManager.new();
    dummyActionManager = await DummyActionManager.new();
    await contractManager.addContract('actions', dummyActionManager.address);
    await contractManager.addContract('actionDB', actionDB.address);
  });

  it('should return contract manager as an owner', async function() {
    let owner = await actionDB.OWNER();
    assert.isTrue(owner === contractManager.address);
  });

  it('should add an action', async function() {
    let name = 'DummyAction'
    let dummyActionMock = await DummyActionMock.new();
    await dummyActionManager.addAction(name, dummyActionMock.address);
    let actionAddress = await actionDB.actions(name);
    assert.isTrue(actionAddress == dummyActionMock.address);
  });

  it('should remove an existing action', async function() {
    let name = 'DummyAction'
    let dummyActionMock = await DummyActionMock.new();
    await dummyActionManager.addAction(name, dummyActionMock.address);
    await dummyActionManager.removeAction(name);
    let actionAddress = await actionDB.actions(name);
    assert.isTrue(actionAddress != dummyActionMock.address);
  });

});
