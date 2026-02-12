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
        
        character.takeDamage(damage)
        
        #expect(character.health < 1000 && character.health > 0)
        #expect(character.isAlive)
    }
    
    @Test func characterShouldDie() {
        let character = Character()
        let damage = Int.random(in: 1000...2000)
        character.takeDamage(damage)
        
        #expect(character.health == 0)
        #expect(!character.isAlive)
    }

    @Test func characterReceiveHeal() {
        let character = Character()
        let startedHealth = Int.random(in: 1...100)
        character.health = startedHealth
        let cure = Int.random(in: 1...800)
        
        character.takeHeal(cure)
        
        #expect(character.health > startedHealth && character.health < 1000)
        #expect(character.isAlive)
    }
    
    @Test func characterShouldNotHealAboveMax() {
        let character = Character()
        let startedHealth = Int.random(in: 900...1000)
        character.health = startedHealth
        let cure = Int.random(in: 100...800)
        
        character.takeHeal(cure)
        
        #expect(character.health > startedHealth && character.health == 1000)
        #expect(character.isAlive)
    }
    
    @Test func characterShouldNotHealAboveDied() {
        let character = Character()
        character.health = 0
        let cure = Int.random(in: 100...800)
        
        character.takeHeal(cure)
        
        #expect(character.health == 0)
        #expect(!character.isAlive)
    }
    
//    Iteration Two
    
//    A Character cannot Deal Damage to itself.
//
//    A Character can only Heal itself.
//
//    When dealing damage:
//
//    If the target is 5 or more Levels above the attacker, Damage is reduced by 50%
//    If the target is 5 or more Levels below the attacker, Damage is increased by 50%
    
    @Test func characterCantDealDamageToSelf() {
        let character = Character()
        let action = 
        let damage = Int.random(in: 1...100)
        
        
        
        #expect(character.health == 1000)
    }
}
