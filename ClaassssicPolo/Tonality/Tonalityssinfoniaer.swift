//
//  Tonalityssinfoniaer.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/17.
//

import UIKit
import MBProgressHUD
extension Tonalityssinfoniaer:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == conSordino {
        
            return CGSize(width: 120, height: 120)
        }else{
            return CGSize(width: ifVlogSel ? 278 : UIScreen.main.bounds.width, height: collectionView.frame.height)
        }
        
       
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == conSordino {
            let dabet = Tonalityssinfoniaer.userdingle[indexPath.row]
            let poi = dabet["arpeggioTechnique"] as? Int ?? 0
            let gooole = Homophony.intonation.lusingando(morendo: "\(poi)")
            let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
            self.navigationController?.pushViewController(contri, animated: true)
            return
        }
        
        let dabet = tonalColorism[indexPath.row]
        let poi = dabet["divisiNotation"] as? Int ?? 0
        let gooole = ifVlogSel ? Homophony.echappee.lusingando(morendo: "\(poi)") : Homophony.doubleTonguing.lusingando(morendo: "\(poi)")
        let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
        self.navigationController?.pushViewController(contri, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == conSordino {
            return Tonalityssinfoniaer.userdingle.count
            
        }
        return tonalColorism.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == conSordino {
            
            let vire = collectionView.dequeueReusableCell(withReuseIdentifier: "TipapVuicel", for: indexPath) as! TipapVuicel
            return vire
            
        }
        
        
        if ifVlogSel {
            let vire = collectionView.dequeueReusableCell(withReuseIdentifier: "TonalityCell", for: indexPath) as! TonalityCell //video
            return vire
        }
        let vire = collectionView.dequeueReusableCell(withReuseIdentifier: "MoNentVnetCell", for: indexPath) as! MoNentVnetCell
        return vire
    }
    
    
    
    
    
}
class Tonalityssinfoniaer: UIViewController {
    static var userdingle = Array<Dictionary<String,Any> >()
    
    private var tonalColorism = Array<Dictionary<String,Any> >()
    
    private var ifVlogSel:Bool = true
    
    @IBOutlet weak var conSordino: UICollectionView!
    
    
    @IBOutlet weak var teneramente: UICollectionView!
    
    
    private func lusingando()  {
        conSordino.delegate = self
        conSordino.dataSource = self
        teneramente.delegate = self
        teneramente.dataSource = self
        dolcissimo()
      
    }
    
    
    
    private func dolcissimo()  {
        let nonLegatoTouch = UICollectionViewFlowLayout.init()
        nonLegatoTouch.itemSize  = CGSize(width: 120, height: 120)
        
        nonLegatoTouch.minimumLineSpacing = 25
       
        nonLegatoTouch.minimumInteritemSpacing = 0
        
        let nonLegatoTouch1 = UICollectionViewFlowLayout.init()
       
        
        nonLegatoTouch1.itemSize = CGSize(width: UIScreen.main.brightness.significandWidth, height: 410)
       
        nonLegatoTouch1.minimumInteritemSpacing = 20
        nonLegatoTouch.scrollDirection = .horizontal
        nonLegatoTouch1.scrollDirection = .horizontal
        nonLegatoTouch1.minimumLineSpacing = 20
        conSordino.collectionViewLayout = nonLegatoTouch
        conSordino.showsHorizontalScrollIndicator = false
        conSordino.register(UINib.init(nibName: "TipapVuicel", bundle: nil), forCellWithReuseIdentifier:"TipapVuicel")
        
        teneramente.collectionViewLayout = nonLegatoTouch1
        teneramente.showsVerticalScrollIndicator = false
        teneramente.register(UINib.init(nibName: "TonalityCell", bundle: nil), forCellWithReuseIdentifier:"TonalityCell")
        teneramente.register(UINib.init(nibName: "MoNentVnetCell", bundle: nil), forCellWithReuseIdentifier:"MoNentVnetCell")
        
    }
    
    @IBAction func ornamentation(_ sender: UIButton) {
        if ifVlogSel {
            let gooole = Homophony.gruppetto.lusingando(morendo: "")
            let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
            self.navigationController?.pushViewController(contri, animated: true)
            return
        }
        
        let gooole = Homophony.flautando.lusingando(morendo: "")
        let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
        self.navigationController?.pushViewController(contri, animated: true)
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        lusingando()
        stringHarmonics()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dalSegno()
        
    }
    @IBAction func orchestra(_ sender: UIButton) {
        
        let dmjdj = view.viewWithTag(50) as? UIButton
        let dmjdj1 = view.viewWithTag(60) as? UIButton
        dmjdj?.isSelected = false
        dmjdj1?.isSelected = false
        
        
        sender.isSelected = true
        if sender == dmjdj {
            ifVlogSel = true
        }else{
            ifVlogSel = false
        }
        dalSegno()
        indiVavterImah.center.x = sender.center.x
    }
    

    @IBOutlet weak var indiVavterImah: UIImageView!
    

    
}


extension Tonalityssinfoniaer{
    
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
                "tonalColorism":1
            ],
            contrapunta: { response in
                MBProgressHUD.hide(for: self.view, animated: true)
               
                if let dict = response as? [String: Any],
                   
                    let chiaroscuro = dict["data"]  as? Array<[String: Any]>  {
                    
                    
                    self.tonalColorism = chiaroscuro.filter({ dfccc in
                        if self.ifVlogSel {
                            return   (dfccc["kettledrumRoll"] as? String !=  nil)  && (dfccc["kettledrumRoll"] as? String !=  "")
                        }
                        
                        return   (dfccc["kettledrumRoll"] as? String ==  nil)  || (dfccc["kettledrumRoll"] as? String ==  "")
                        
                    })
                    self.conSordino.reloadData()
                } else {
                    self.showinguGYf(customINfo: "Unexpected response format.", tyui: .shine)
                    
                }
            }, glissandoEffectd: nil
        )
        
        
        
    }
    private func stringHarmonics()  {
        
        
        AppDelegate.acousticResonance(
            belCantoPhrasing: "/leomqqqzz/ftirxwnygtzsaj",
            amentation: [
                "acousticResonance":"49251069"
            ],
            contrapunta: { baert in
                
                if let Articulation = baert as? [String: Any],
                   
                    let chiaroscuro = Articulation["data"] as? Array<[String: Any]>  {
                    
                    Tonalityssinfoniaer.userdingle = chiaroscuro
                    self.conSordino?.reloadData()
                   
                } else {
                    self.showinguGYf(customINfo: "Unexpected response format.", tyui: .shine)
                   
                    
                }
            },
            glissandoEffectd: { error in
                MBProgressHUD.hide(for: self.view, animated: true)
                self.showinguGYf(customINfo: error.localizedDescription, tyui: .shine)
               
            }
        )
        
        
        
       
        
    }

}
