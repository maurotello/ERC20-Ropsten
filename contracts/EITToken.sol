/*
Un contrato de tokens es simplemente un smart contract de Ethereum!. 
"Enviar tokens" en realidad significa:
"llamar a un método en un contrato inteligente que alguien escribió e implementó". 
Un contrato de tokens no es mucho más que un mapping de direcciones a saldos,
además de algunos métodos para sumar y restar de esos saldos.

¡Eso es todo! Estos saldos podrían considerarse dinero, puntos de experiencia 
en un juego, escrituras de propiedad o derechos de voto, 
y cada uno de estos tokens se almacenaría en diferentes contratos de tokens.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract EITToken is ERC20 {
    constructor() ERC20("EdITToken", "XIT") {
        _mint(msg.sender, 1000000000000000000000 );
    }

    // *** Sobre Decimales ***
    
    // por default, ERC20 usa un valor de 18 para decimales, 
    // al igual que Ether y la mayoría de los tokens ERC20
    // Para usar un valor diferente, debemos sobreescribor la función decimals()

    // function decimals() public view virtual override returns (uint8) {
    //     return 16;
    // }

    // Si queremos enviar 5 tokens utilizando un contrato de token con 18 decimales, 
    // el método será:
    // transfer(recipient, 5 * 10^18);

    // https://eth-converter.com/
}

