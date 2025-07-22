//
//  Tremolossinfoniaer.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/17.
//

import UIKit
import MBProgressHUD

class Tremolossinfoniaer: UIViewController, UICollectionViewDataSource ,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tonalColorism.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dabet = indexPath.row
       
        let gooole = Homophony.bariolage.lusingando(morendo: "\(dabet)")
        let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
        self.navigationController?.pushViewController(contri, animated: true)
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let jaio = collectionView.dequeueReusableCell(withReuseIdentifier: "TremoloCell", for: indexPath) as! TremoloCell
        jaio.melisma.isHidden = true
        if let fxc = (tonalColorism[indexPath.row]["passageworkPractice"] as? Array<String>)?.first {
            jaio.neapolitan.loadImage(from: fxc)
        }
        jaio.pianissimo.text = tonalColorism[indexPath.row]["fugalExposition"] as? String
        return jaio
        
    }
    
    private var tonalColorism = Array<Dictionary<String,Any> >()
    @IBOutlet weak var onlinwrUserVIur: UIButton!
    
    
    @IBOutlet weak var picjNextLabr: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lusingando()
        picjNextLabr.layer.masksToBounds = true
        dalSegno()
        picjNextLabr.layer.cornerRadius = 6
        dolcissimo()
    }
    

    @IBOutlet weak var mezzoSoprano: UICollectionView!
    
    @IBAction func tomenfaggert(_ sender: UIButton) {
        let gooole = Homophony.klangfarben.lusingando(morendo: "")
        let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
        self.navigationController?.pushViewController(contri, animated: true)
        
    }
    
    
    private func lusingando()  {
        mezzoSoprano.delegate = self
        mezzoSoprano.dataSource = self
       
        dolcissimo()
      
    }
    
    
    
    private func dolcissimo()  {
        let nonLegatoTouch = UICollectionViewFlowLayout.init()
        nonLegatoTouch.itemSize  = CGSize(width: (UIScreen.main.bounds.width - 24 - 10)/2, height: 253)
        
        nonLegatoTouch.minimumLineSpacing = 10
       
        nonLegatoTouch.minimumInteritemSpacing = 10
        
        mezzoSoprano.backgroundColor = .clear
        mezzoSoprano.collectionViewLayout = nonLegatoTouch
        mezzoSoprano.showsHorizontalScrollIndicator = false
        mezzoSoprano.register(UINib.init(nibName: "TremoloCell", bundle: nil), forCellWithReuseIdentifier:"TremoloCell")
        
     
        
    }
    
    private func dalSegno(){
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        giocoso.bezelView.style = .solidColor
        giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        giocoso.contentColor = .white // 文字和转圈颜色
        giocoso.label.text = "loading..."
        AppDelegate.acousticResonance(
            belCantoPhrasing: "/yuxqtfnndlz/upbyw",
            amentation: [
                "scordaturaTuning":"49251069",
                "absolutePitch": 10,
                "woodwindEmbossing": 1,
               
                "bassoContinuo":2,
                "tonalColorism":5
            ],
            contrapunta: { response in
                MBProgressHUD.hide(for: self.view, animated: true)
               
                if let dict = response as? [String: Any],
                   
                    let chiaroscuro = dict["data"]  as? Array<[String: Any]>  {
                    
                    
                    self.tonalColorism = chiaroscuro
                    self.mezzoSoprano.reloadData()
                } else {
                    self.showinguGYf(customINfo: "Unexpected response format.", tyui: .shine)
                    
                }
            }, glissandoEffectd: nil
        )
        
        
        
    }
}
