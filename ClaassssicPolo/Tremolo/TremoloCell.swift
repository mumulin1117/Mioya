//
//  TremoloCell.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/17.
//

import UIKit

class TremoloCell: UICollectionViewCell {

    
    @IBOutlet weak var neapolitan: UIImageView!
    
   
    @IBOutlet weak var pianissimo: UILabel!//contetnt
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.masksToBounds = true
        neapolitan.masklingColrm(clore: 20, isO: true)
        self.layer.cornerRadius = 20
    }
    
    @IBOutlet weak var melisma: UIImageView!
    
  
}
