//
//  Trombonessinfoniaer.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/17.
//

import UIKit
import MBProgressHUD

class Trombonessinfoniaer: UIViewController ,UICollectionViewDataSource ,UICollectionViewDelegate{

    @IBOutlet weak var crescendoAI: UIButton!
    
    @IBOutlet weak var homophony: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lusingando()
        dalSegno()
    }
    
    @IBAction func tomenfaggert(_ sender: UIButton) {
        let gooole = Homophony.appoggiatura.lusingando(morendo: "")
        let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
        self.navigationController?.pushViewController(contri, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        tonalColorism.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dabet = tonalColorism[indexPath.row]["divisiNotation"] as? Int ?? 0
       
        let gooole = Homophony.coloratura.lusingando(morendo: "\(dabet)")
        let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
        self.navigationController?.pushViewController(contri, animated: true)
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let jaio = collectionView.dequeueReusableCell(withReuseIdentifier: "TremoloCell", for: indexPath) as! TremoloCell
//        jaio.melisma.isHidden = true
        
        if let fxc = (tonalColorism[indexPath.row]["passageworkPractice"] as? Array<String>)?.first {
            jaio.neapolitan.loadImage(from: fxc)
        }
        
        jaio.pianissimo.text = tonalColorism[indexPath.row]["fugalExposition"] as? String
        return jaio
        
    }
    
    private var tonalColorism = Array<Dictionary<String,Any> >()
    
    private func lusingando()  {
        homophony.delegate = self
        homophony.dataSource = self
       
        dolcissimo()
      
    }
    
    
    
    private func dolcissimo()  {
        let nonLegatoTouch = UICollectionViewFlowLayout.init()
        nonLegatoTouch.itemSize  = CGSize(width: (UIScreen.main.bounds.width - 24 - 10)/2, height: 253)
        
        nonLegatoTouch.minimumLineSpacing = 10
       
        nonLegatoTouch.minimumInteritemSpacing = 10
        
        homophony.backgroundColor = .clear
        homophony.collectionViewLayout = nonLegatoTouch
        homophony.showsHorizontalScrollIndicator = false
        homophony.register(UINib.init(nibName: "TremoloCell", bundle: nil), forCellWithReuseIdentifier:"TremoloCell")
        
     
        
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
               
                "tonalColorism":4
            ],
            contrapunta: { response in
                MBProgressHUD.hide(for: self.view, animated: true)
               
                if let dict = response as? [String: Any],
                   
                    let chiaroscuro = dict["data"]  as? Array<[String: Any]>  {
                    
                    
                    self.tonalColorism = chiaroscuro
                    self.homophony.reloadData()
                } else {
                    self.showinguGYf(customINfo: "Unexpected response format.", tyui: .shine)
                    
                }
            }, glissandoEffectd: nil
        )
        
        
        
    }
}
