//
//  MoNentVnetCell.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/17.
//

import UIKit

class MoNentVnetCell: UICollectionViewCell {

    @IBOutlet weak var naturalHarmonic: UIImageView!
    
    @IBOutlet weak var nocturne: UILabel!
    
    
    @IBOutlet weak var obbligato: UILabel!
    
    @IBOutlet weak var neapolitan: UIImageView!
    
    @IBOutlet weak var operaCount: UILabel!
    
    @IBOutlet weak var octaveCount: UILabel!
    
    @IBOutlet weak var pianissimo: UILabel!//contetnt
    override func awakeFromNib() {
        super.awakeFromNib()
        naturalHarmonic.masklingColrm(clore: 22, isO: true)
        neapolitan.masklingColrm(clore: 14, isO: true)
    }
    
    
    
    
    
    
    @IBOutlet weak var pastorale: UIButton!
    
}

extension UIImageView{
    func masklingColrm(clore:CGFloat,isO:Bool)  {
        self.layer.cornerRadius = clore
        self.layer.masksToBounds = isO
    }
}
