//
//  Tremolossinfoniaer.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/17.
//

import UIKit

class Tremolossinfoniaer: UIViewController {

    @IBOutlet weak var onlinwrUserVIur: UIButton!
    
    
    @IBOutlet weak var picjNextLabr: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picjNextLabr.layer.masksToBounds = true
        picjNextLabr.layer.cornerRadius = 6
    }
    

    @IBOutlet weak var mezzoSoprano: UICollectionView!
    
}
