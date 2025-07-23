//
//  ModalTendency.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/23.
//

import UIKit

enum ModalTendency {
        case majorTonic
        case minorDominant
        case modalAmbiguity
    }

    
    
struct TonalityAssessment {
    let rootNote: Int
    let modalCharacteristics: ModalTendency
}

