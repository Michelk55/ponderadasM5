// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; // Define a versão do compilador Solidity necessária

contract anac {
    uint private idade; // Armazena a idade em uma variável
    address private owner; // Armazena o endereço do dono do contrato

    event variavelAtribuida(uint idade); // Evento para sinalizar a atualização da variável idade

    // Restringe a execução de funções ao dono do contrato
    modifier OnlyOwner() {
        require(msg.sender == owner, "Not owner"); // Confirma se o chamador é o dono
        _;
    }

    // Inicializa o contrato com o criador como dono e idade inicial
    constructor() {
        owner = msg.sender; // Atribui o criador do contrato como dono
        idade = 18; // Define a idade inicial como 18
    }

    // Permite ao dono atualizar a idade
    function setIdade(uint valor) public OnlyOwner {
        idade = valor; // Atualiza a idade
        emit variavelAtribuida(idade); // Notifica a mudança através de um evento
    }

    // Retorna a idade atual, acessível somente pelo dono
    function getIdade() private view returns(uint) {
        return idade; // Devolve o valor atual da idade
    }
}
