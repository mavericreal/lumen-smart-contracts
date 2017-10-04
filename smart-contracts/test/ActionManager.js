'use strict';
const assertJump = require('./helpers/assertJump');

var ContractManager = artifacts.require('../contracts/ContractManager.sol');
var ActionManager = artifacts.require('../contracts/ActionManager.sol');
var DummyContractMock = artifacts.require("./helpers/DummyContractMock.sol");
var ActionAddContract = artifacts.require("../contracts/actions/ActionAddContract.sol");
var ActionDB = artifacts.require('../contracts/ActionDB.sol');

contract('ActionManager', function(accounts) {
  let actionDB, contractManager, actionManager;

  beforeEach(async function() {
    actionDB = await ActionDB.new();
    contractManager = await ContractManager.new();
    actionManager = await ActionManager.new();
    await contractManager.addContract('actions', actionManager.address);
    await contractManager.addContract('actiondb', actionDB.address);
  });

  it('should add an action', async function() {
    let name = 'actionAddAction'
    let actionAddContract = await ActionAddContract.new();
    await actionManager.addAction(name, actionAddContract.address);
    let actionAddress = await actionDB.actions(name);
    assert.isTrue(actionAddress == actionAddContract.address);
  });

  it('should remove an existing action', async function() {
    let name = 'actionAddAction'
    let actionAddContract = await ActionAddContract.new();
    await actionManager.addAction(name, actionAddContract.address);
    await actionManager.removeAction(name);
    let actionAddress = await actionDB.actions(name);
    assert.isTrue(actionAddress != actionAddContract.address);
  });

  it('should execute an already registered action', async function() {
    let owner = await contractManager.OWNER();
    let name = 'actionAddContract'
    let actionAddContract = await ActionAddContract.new();
    await actionManager.addAction(name, actionAddContract.address);
    let actionAddress = await actionDB.actions(name);
    assert.isTrue(actionAddress == actionAddContract.address);
    let dummyContractMock = await DummyContractMock.new();
    let contractName = 'DummyContractMock'
    let result = await actionManager.executeActionAddContract2.call(contractName, dummyContractMock.address);
    assert.isTrue(result);
  });

});