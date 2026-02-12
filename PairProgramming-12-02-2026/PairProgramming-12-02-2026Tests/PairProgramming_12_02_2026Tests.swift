//
//  PairProgramming_12_02_2026Tests.swift
//  PairProgramming-12-02-2026Tests
//
//  Created by Gabriele Nardi on 12/02/26.
//

import Testing
@testable import PairProgramming_12_02_2026

struct PairProgramming_12_02_2026Tests {
    
//    Iteration One
//    All Characters, when created, have:
//
//    Health, starting at 1000
//    Level, starting at 1
//    May be Alive or Dead, starting Alive (Alive may be a true/false)
    
//    Characters can Deal Damage to Characters.
//
//    Damage is subtracted from Health
//    When damage received exceeds current Health, Health becomes 0 and the character dies
    
//    A Character can Heal a Character.
//
//    Dead characters cannot be healed
//    Healing cannot raise health above 1000
    
    @Test func characterInit() {
        let character = Character()
        #expect(character.health == 1000)
        #expect(character.level == 1)
        #expect(character.isAlive)
    }

    @Test func characterReceiveDamage() {
        let character = Character()
        let damage = Int.random(in: 1...999)
        
        character.receive(damage: damage)
        
        #expect(character.health < 1000 && character.health > 0)
        #expect(character.isAlive)
    }
    
    @Test func characterShouldDie() {
        let character = Character()
        let damage = Int.random(in: 1000...2000)
        character.receive(damage: damage)
        
        #expect(!character.isAlive)
    }
}
