//
//  TonalityCell.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//

import UIKit
enum MusicalEra {
   case baroque, classical, romantic
}
class TonalityCell: UICollectionViewCell {
    @IBOutlet weak var naturalHarmonic: UIImageView!
    
    @IBOutlet weak var nocturne: UILabel!
    
    
    
    
    @IBOutlet weak var neapolitan: UIImageView!
    
   
    @IBOutlet weak var pianissimo: UILabel!//contetnt
    override func awakeFromNib() {
        super.awakeFromNib()
        neapolitan.masklingColrm(clore: 20, isO: true)
        self.layer.cornerRadius = 20
        jetWhistle()
    }
    @IBOutlet weak var pastorale: UIButton!
    
    @IBOutlet weak var melisma: UIImageView!
    
    @IBOutlet weak var mezzoSoprano: UIImageView!
    
    func jetWhistle() {
        self.layer.masksToBounds = true
        
        self.naturalHarmonic.masklingColrm(clore: 20, isO: true)
    }
}
