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
    
    @IBOutlet weak var paheiter: UIButton!
    
    @IBOutlet weak var obbligato: UILabel!
    
    @IBOutlet weak var neapolitan: UIImageView!
    
    @IBOutlet weak var operaCount: UILabel!
    
    @IBOutlet weak var octaveCount: UILabel!
    
    @IBOutlet weak var pianissimo: UILabel!//contetnt
    override func awakeFromNib() {
        super.awakeFromNib()
        paheiter.layer.cornerRadius = 17
        paheiter.layer.masksToBounds = true
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
extension UIImageView {
    func loadImage(from urlString: String, placeholder: UIImage? = nil) {
        // 先设置占位图
        self.image = placeholder
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let self = self else { return }
            
            if let error = error {
                print("Error loading image: \(error.localizedDescription)")
                return
            }
            
            guard let data = data, let image = UIImage(data: data) else {
                return
            }
            
            DispatchQueue.main.async {
                self.image = image
            }
        }
        task.resume()
    }
}
