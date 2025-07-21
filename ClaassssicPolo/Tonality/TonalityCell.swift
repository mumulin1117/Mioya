//
//  TonalityCell.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/17.
//

import UIKit

class TonalityCell: UICollectionViewCell {
    @IBOutlet weak var naturalHarmonic: UIImageView!
    
    @IBOutlet weak var nocturne: UILabel!
    
    
    
    
    @IBOutlet weak var neapolitan: UIImageView!
    
   
    @IBOutlet weak var pianissimo: UILabel!//contetnt
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var pastorale: UIButton!
    
    @IBOutlet weak var melisma: UIImageView!
    
    @IBOutlet weak var mezzoSoprano: UIImageView!
}
