'use strict';
const assertJump = require('./helpers/assertJump');

var OwnerEnabled = artifacts.require('../contracts/base/OwnerEnabled.sol');

contract('OwnerEnabled', function(accounts) {
  let ownerEnabled;

  beforeEach(async function() {
    ownerEnabled = await OwnerEnabled.new();
  });

  it('should have an owner', async function() {
    let owner = await ownerEnabled.OWNER();
    assert.isTrue(owner !== 0);
  });

  it('changes owner after transfer', async function() {
    let ownerAddr = accounts[1];
    await ownerEnabled.setOwnerAddress(ownerAddr);
    let owner = await ownerEnabled.OWNER();
    assert.isTrue(owner === ownerAddr);
  });

  it('should prevent non-owners from transfering', async function() {
    let ownerAddr = accounts[1];
    await ownerEnabled.setOwnerAddress(ownerAddr);
    const other = accounts[2];
    const owner = await ownerEnabled.OWNER();
    assert.isTrue(owner !== other);
    try {
      await ownerEnabled.setOwnerAddress(other);
      assert.fail('should have thrown before');
    } catch(error) {
      assertJump(error);
    }
  });

});
