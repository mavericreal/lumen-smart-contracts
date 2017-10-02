// To connect with UPORT, make sure that you have an .env file at the root of /dapp
// file needs to contain the following variables (example)
// UPORT_APP_NAME='Endorsement Tokens'
// UPORT_CLIENT_ID='2opT3d3yDyZrXsPVPmXvTQcOPqs8KeB3njd'
// UPORT_SIGNER='fcd26cbcf9bb70062b09f133eee6bfdf0ac48b16e71e05b598f2202c76ca09fc'
// UPORT_NETWORK='rinkeby'

// import { Connect, SimpleSigner, MNID } from 'uport-connect'
//
// const uport = new Connect('EndorsementToken', {
//   clientId: '2oiAvWQV8XeNzhb3MgpQZTmAKNXKkwGQJcB',
//   network: 'rinkeby',
//   signer: SimpleSigner('6026a11f37702d836b48e243eea200bc1f1bb1673882fc8a93fc90de4d2aaad5')
// })
// const web3 = uport.getWeb3()
//
// export { web3, uport, MNID }


import { Connect, SimpleSigner, MNID } from 'uport-connect'

const uport = new Connect(process.env.UPORT_APP_NAME, {
  clientId: process.env.UPORT_CLIENT_ID,
  network: process.env.UPORT_NETWORK,
  signer: SimpleSigner(process.env.UPORT_SIGNER)
})
const web3 = uport.getWeb3()

export { web3, uport, MNID }
