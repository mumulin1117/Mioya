//
//  TipapVuicel.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/21.
//

import UIKit

class TipapVuicel: UICollectionViewCell {

    @IBOutlet weak var gonali: UIImageView!
    
    @IBOutlet weak var nakirl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        gonali.masklingColrm(clore: 29, isO: true)
    }

}
