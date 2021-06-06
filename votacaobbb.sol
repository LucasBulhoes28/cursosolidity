// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

contract Votacaobbb {
    
    
//Definicao dos paramentros

    string public nomeDoBrotherA;
    uint256 public codigoDoBrotherA;
    string public nomedoBrotherB;
    uint256 public codigoDoBrotherB;
    string public nomedoBrotherC;
    uint256 public codigoDoBrotherC;
    uint256 public prazoFinalVotacao;
    uint256 private valorDigitado;
    bool private maisVotado;
    address payable enderecoCarteiraVotante;
    
    
//Utilizacao de structs para identificacao dos brothers

    struct BrotherA {
        string nomeDoBrotherA;
        uint256 codigoDoBrotherA;
    }
    
    struct BrotherB {
        string nomeDoBrotherB;
        uint256 codigoDoBrotherB;
    }
    
    struct BrotherC {
        string nomeDoBrotherC;
        uint256 codigoDoBrotherC;
    }
    
   
//Utilizacao de constructor e event para definir prazo da votacoo 

   constructor (uint256 prazoFinalVotacao, address payable enderecoCarteiraVotante) {
       finalizaVotacao = block.timestamp;
       enderecoCarteiraVotante = enderecoCarteiraVotante;
   }
   
    address payable public carteiraVotante;
    
    event finalizaVotacao (uint256);
        require(block.timestamp >= finalizaVotacao); //votacao ainda nao encerrada
        require(!encerrado); //votacao encerrada
    
        encerrado = true;
        return "prazo encerrado";
    
    
//Utilizacao do mapping para definir regra de contagem dos votos
    
    mapping (uint256 => string) public listaVotoBrother;
        votos [] public votos;
            // codigoDoBrotherA => nomeDoBrotherA
            // codigoDoBrotherB => nomeDoBrotherB
            // codigoDoBrotherC => nomeDoBrotherC
         
         
//Utilizacao do require para definir o prazo da votacao como condicao vinculante ao voto
    
    function votacao(address payable enderecoCarteiraVotante) public payable {
        require(block.timestamp <= finalizaVotacao);
    }
    
    
//Verificacao dos valores digitados pelos votantes
    
    function verificacaoValorDigitado() public view returns (bool)
    {
        if (valorDigitado == codigoDoBrotherA) {
            return true; 
        }
        
        if (valorDigitado == codigoDoBrotherB) {
            return true;
        }
        
        if (valorDigitado == codigoDoBrotherC) {
            return true;
        
        } else {
            return false;
        }
    }

//Apuracao dos votos e verificacao de qual brother foi eliminado

    function retornaMaisVotado() public returns (string) {
        return maisVotado;
    }
}
