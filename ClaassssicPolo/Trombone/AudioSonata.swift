//
//  AudioSonata.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/23.
//

import UIKit

struct AudioSonata {
    let composition: MusicalWorkID
    let notes: [NoteAnalysis]
    let beats: [TimeInterval]
    
    struct NoteAnalysis {
        let frequency: Int
        let position: Int
        let duration: TimeInterval
    }
}
