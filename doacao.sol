// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.4;

contract DoacaoAlimentosParaEscolas {
    
    string public doador;
    string public donatario;
    uint256 private valorDoacao;
    uint256 private constant valorDoacaoPorAluno = 100;
    uint256 private constant valorMaximoDoacao = 10000;
    
    constructor (string memory empresa, string memory escola)
    {
        doador = empresa;
        donatario = escola;
    }
    
    function calculoDoacao (uint256 numeroDeAlunos) public returns (uint256)
    {
        valorDoacao = numeroDeAlunos*valorDoacaoPorAluno;
        return valorDoacao;
    }
    
    function verificacaoLimiteDoacao () public view returns (bool)
    {
        if (valorDoacao < valorMaximoDoacao) {
            return true;
        }
        
        if (valorDoacao == valorMaximoDoacao) {
            return true;
            
        } else {
            return false;
        }
    }

}
