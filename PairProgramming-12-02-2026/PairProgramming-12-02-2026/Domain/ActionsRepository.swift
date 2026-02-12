//
//  ActionsRepository.swift
//  PairProgramming-12-02-2026
//
//  Created by Gabriele Nardi on 12/02/26.
//

import Foundation

public protocol ActionsRepository {
    
    associatedtype ActionResult
    
    func act(_ action: Action, from: Character, to: Character) -> ActionResult
}
