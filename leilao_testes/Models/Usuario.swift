//
//  Usuario.swift
//  leilao_testes
//
//  Created by Vitor Henrique Barreiro Marinho on 02/02/22.
//


import Foundation

class Usuario {
    
    let id:Int?
    let nome:String
    
    init(id:Int? = nil, nome:String) {
        self.id = id
        self.nome = nome
    }
}
