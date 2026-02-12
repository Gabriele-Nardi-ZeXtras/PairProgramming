//
//  Character.swift
//  PairProgramming-12-02-2026
//
//  Created by Gabriele Nardi on 12/02/26.
//

import Foundation

public class Character {
    var health: Int = 1000 {
        didSet {
            isAlive = health > 0
            
            if health > 1000 {
                health = 1000
            }
            
            if health < 0 {
                health = 0
            }
        }
    }
    var level: Int = 1
    var isAlive: Bool = true
    
    func takeDamage(_ amount: Int) {
        health -= amount
    }
    
    func takeHeal(_ amount: Int) {
        guard characterCanBeHealed() else {
            return
        }
        health += amount
    }
    
    private func characterCanBeHealed() -> Bool {
        isAlive
    }
}
