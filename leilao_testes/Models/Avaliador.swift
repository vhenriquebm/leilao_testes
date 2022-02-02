//
//  Avaliador.swift
//  leilao_testes
//
//  Created by Vitor Henrique Barreiro Marinho on 02/02/22.
//


    import Foundation

    class Avaliador {
        
        private var maiorDeTodos = Double.leastNonzeroMagnitude
        private var menorDeTodos = Double.greatestFiniteMagnitude
        
        private var maiores: [Lance] = []
        
        func avalia(leilao:Leilao) {
            guard let lances = leilao.lances else { return }
            
            for lance in lances {
                if lance.valor > maiorDeTodos {
                    maiorDeTodos = lance.valor
                }
                if lance.valor < menorDeTodos {
                    menorDeTodos = lance.valor
                }
            }
        }
        
        func maiorLance() -> Double {
            return maiorDeTodos
        }
        
        func menorLance() -> Double {
            return menorDeTodos
        }
        
        
        private func pegaOsMaioresLancesNoLeilao (leilao: Leilao) {
            
            guard let lances = leilao.lances else {return}
            
            maiores = lances.sorted(by: {lista1, lista2 in return lista1.valor > lista2.valor})
            
            let maioresLances = maiores.prefix(3)
            

            maiores = Array (maioresLances)
            
            
            }
        
        
        func tresMaiores () ->  [Lance] {
            
            return maiores}
        
    }


