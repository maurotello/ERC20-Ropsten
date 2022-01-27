# Unidad4_EIP_ERC20_ERC721

### En este ejmplo haremos el deploy del token EITToken (1000 unidades) en la red pública Ropsten (Los pasos los vamos a ir haciendo juntos en clase)

## Prerequisitos
- Metamask instalado y la frase secreta de recuperación disponible (12 palabras)
- Metamask con fondos del faucet de Ropsten
- Crear una cuenta en infura.io/register.

## Pasos para el deploy en red pública Ropsten

- Contrato EITToken.sol
- Crearmos una cuenta en Infura.io
- Instalamos HD Wallet-enabled Web3 provider: https://www.npmjs.com/package/@truffle/hdwallet-provider

```
npm install @truffle/hdwallet-provider
```

- Modificamos truffle-config.js
	- Descomentamos las líneas 21 a 24 para usar Wallet-enabled Web3 provider.
	- Creo archivo .secret con nemonic (o .ENV)
	- Networks: linea 60 a 63 configuración para usar la red de Ropsten
	- Solicito ether al faucet ropsten o https://faucet.metamask.io/
	
- Migration

```
truffle compile
truffle migrate --network ropsten
Contract address: 0x6Fe42D955A03718821Fc70844117D339a1dd7B3E
```

- Checkeamos en etherscan de ropsten: https://ropsten.etherscan.io/ 
- Agrego los tokens metamask utilizando el adres del token
- Interactuo desdel Metamask

- Interacción desde consola
```
truffle console --network ropsten
const box = await EITToken.deployed();
box.balanceOf("0x435C89B1efE595a75A1f478c9d0c34F1d57c5002");
(await box.balanceOf("0x435C89B1efE595a75A1f478c9d0c34F1d57c5002")).toString()
(await box.balanceOf("0x7D16d25c6cB3397CE4bFa134f604D8202E5Ad57e")).toString()
```


	

