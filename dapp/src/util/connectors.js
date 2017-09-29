import { Connect, SimpleSigner, MNID } from 'uport-connect'

const uport = new Connect('EndorsementToken', {
  clientId: '2oiAvWQV8XeNzhb3MgpQZTmAKNXKkwGQJcB',
  network: 'rinkeby',
  signer: SimpleSigner('6026a11f37702d836b48e243eea200bc1f1bb1673882fc8a93fc90de4d2aaad5')
})
const web3 = uport.getWeb3()

export { web3, uport, MNID }
