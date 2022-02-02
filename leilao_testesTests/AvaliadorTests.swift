//
//  AvaliadorTests.swift
//  leilao_testesTests
//
//  Created by Vitor Henrique Barreiro Marinho on 02/02/22.
//

import XCTest
@testable import leilao_testes


class AvaliadorTests: XCTestCase {

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
       
    }
    
    func testDeveEntenderLancesEmOrdemCrescente () {
        
        let joao = Usuario(nome: "Joao")
        let jose = Usuario(nome: "Jose")
        let maria = Usuario(nome: "Maria")
        
        let leilao = Leilao(descricao: "Playstation 4")
        leilao.propoe(lance: Lance(maria, 250.0))
        leilao.propoe(lance: Lance(joao, 300.0))
        leilao.propoe(lance: Lance(jose, 400.0))
        
        // Acao
        
        let leiloeiro = Avaliador()
        leiloeiro.avalia(leilao: leilao)
        
        // Validacao
        
        
        XCTAssertEqual(250.0,leiloeiro.menorLance())
        XCTAssertEqual(400,leiloeiro.maiorLance())

        
    }
    
    
    
    func testDeveEntenderLancesEmOrdemCrescenteComOutrosValores () {
        
        let joao = Usuario(nome: "Joao")
        let jose = Usuario(nome: "Jose")
        let maria = Usuario(nome: "Maria")
        
        let leilao = Leilao(descricao: "Playstation 4")
        leilao.propoe(lance: Lance(maria, 250.0))
        leilao.propoe(lance: Lance(joao, 300.0))
        leilao.propoe(lance: Lance(jose, 400.0))
        
        // Acao
        
        let leiloeiro = Avaliador()
        leiloeiro.avalia(leilao: leilao)
        
        // Validacao
        
        
        XCTAssertEqual(1000.0,leiloeiro.menorLance())
        XCTAssertEqual(3000.0,leiloeiro.maiorLance())

    }
    
    
    func DeveEntenderLeilaoComApenasUmLance () {
        
        let joao = Usuario(nome: "João")
        let leilao = Leilao(descricao: "Playstation")
        leilao.propoe(lance: Lance(joao,1000.0))
        let leiloeiro = Avaliador ()
        leiloeiro.avalia(leilao: leilao)
        
    
        XCTAssertEqual(1000.0, leiloeiro.menorLance())
        XCTAssertEqual(1000.0, leiloeiro.maiorLance())
        
        
        
    }
    
    
    func testDeveEncontrarOsTresMaioresLances() {
        
        let joao = Usuario(nome: "João")
        let maria = Usuario(nome: "Maria")
        
        let leilao = Leilao(descricao: "Playstation 5")
        leilao.propoe(lance: Lance(joao,300.0))
        leilao.propoe(lance: Lance(maria,600.0))
        leilao.propoe(lance: Lance(joao,600.0))
        leilao.propoe(lance: Lance(maria,600.0))
        
        
let leiloeiro = Avaliador ()
        leiloeiro.avalia(leilao: leilao)
        
        let listaDelances = leiloeiro.tresMaiores()
        
        XCTAssertEqual(3,listaDelances.count)
        XCTAssertEqual(600, listaDelances[0].valor)
        XCTAssertEqual(500, listaDelances[1].valor)
        XCTAssertEqual(400, listaDelances[2].valor)
    }
    
}

