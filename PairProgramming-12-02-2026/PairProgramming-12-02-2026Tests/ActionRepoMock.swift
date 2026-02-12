//
//  ActionRepoMock.swift
//  PairProgramming-12-02-2026Tests
//
//  Created by Gabriele Nardi on 12/02/26.
//

import Foundation
import PairProgramming_12_02_2026

struct ActionRepoMock: ActionsRepository {
    
    struct Result {
        // TODO: Implements
    }
    
    typealias ActionResult = Result

    func act(_ action: Action, from: Character, to: Character) -> Result {
        Result()
    }
}
