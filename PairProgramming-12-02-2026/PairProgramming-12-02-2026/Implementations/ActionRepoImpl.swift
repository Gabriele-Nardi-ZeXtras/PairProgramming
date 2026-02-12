//
//  ActionRepoImpl.swift
//  PairProgramming-12-02-2026
//
//  Created by Gabriele Nardi on 12/02/26.
//

struct ActionRepoImpl: ActionsRepository {
    
    struct Result {
        // TODO: Implements
    }
    
    typealias ActionResult = Result
    
    func act(_ action: Action, from: Character, to: Character) -> ActionResult {
        return Result()
    }
}
