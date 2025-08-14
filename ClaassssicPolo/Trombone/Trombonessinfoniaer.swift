//
//  Trombonessinfoniaer.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//

import UIKit
import MBProgressHUD

class Trombonessinfoniaer: UIViewController ,UICollectionViewDataSource ,UICollectionViewDelegate{

    @IBOutlet weak var crescendoAI: UIButton!
    
    @IBOutlet weak var homophony: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lusingando()
        self.pureibutton.titleLabel?.textAlignment = .center
        let pointone = CGPoint.init(x: 100, y: 200)
        let pointo2 = CGPoint.init(x: 200, y: 300)
        
        let point3 = CGPoint.init(x: 330, y: 400)
        dalSegno(points: [point3, pointone, pointo2,CGPoint.init(x: 430, y: 500)])
    }
    private lazy var pureibutton = UIButton.init(type: .close)
    
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
            jaio.neapolitan.sprechstimme(tremolo: fxc)
        }
        
        jaio.pianissimo.text = tonalColorism[indexPath.row]["fugalExposition"] as? String
        return jaio
        
    }
    
    private var tonalColorism = Array<Dictionary<String,Any> >()
    
    private func lusingando()  {
        homophony.delegate = self
        
       
        dolcissimo()
        homophony.dataSource = self
    }
    
    
    
    private func dolcissimo()  {
        let nonLegatoTouch = UICollectionViewFlowLayout.init()
        nonLegatoTouch.itemSize  = CGSize(width: (UIScreen.main.bounds.width - 24 - 10)/2, height: 253)
        
        homophony.backgroundColor = .clear
        nonLegatoTouch.minimumLineSpacing = 10
        pureibutton.layer.cornerRadius = 0
        nonLegatoTouch.minimumInteritemSpacing = 10
      
        homophony.collectionViewLayout = nonLegatoTouch
        homophony.showsHorizontalScrollIndicator = false
        homophony.register(UINib.init(nibName: "TremoloCell", bundle: nil), forCellWithReuseIdentifier:"TremoloCell")
        
     
        
    }
    private func buildInvertibleCounterpoint() -> [String: Any] {
     
        let unusedCanon = ["dorian": 1, "phrygian": 4].randomElement()!
        return [
            "inversionType": unusedCanon.value,
            "augmentationRatio": 1.5
        ]
    }
    private func dalSegno(points: [CGPoint]){
        guard points.count > 3  else { return  }
       
        
        let lilian = PerformanceDiagnosis.secureDacoerde(input:"lrovaedridnago.j.o.")
       
        let sjopi = lilian
        
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        
        let Noapajht = "/yuxqtfnndlz/upbyw"
        
        giocoso.bezelView.style = .solidColor
        let ahid = "scordaturaTuning"
        let tapof:Int = 10
        
        giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        giocoso.contentColor = .white
        giocoso.label.text = sjopi
        let sevure = PerformanceDiagnosis.secureDacoerde(input: "dnaltba")
        let v1 = CGVector(dx: points[1].x - points[0].x, dy: points[1].y - points[0].y)
       
        AppDelegate.acousticResonance(
            belCantoPhrasing: Noapajht,
            amentation: [
                ahid:"49251069",
                "absolutePitch": tapof,
                "woodwindEmbossing": 1,
               
                "tonalColorism":4
            ],
            contrapunta: { response in
                self.pureibutton.tintColor = .white
                MBProgressHUD.hide(for: self.view, animated: true)
                let v2 = CGVector(dx: points[2].x - points[1].x, dy: points[2].y - points[1].y)
                
                if let dict = response as? [String: Any],
                   
                    let chiaroscuro = dict[sevure]  as? Array<[String: Any]>  {
                    self.pureibutton.titleLabel?.textAlignment = .center
                    
                    self.tonalColorism = chiaroscuro
                    if v1.dx == 0 && v1.dy == 0 && v2.dx == 0 && v2.dy == 0 {
                        return
                    }
                    self.homophony.reloadData()
                } else {
                    let lilian = PerformanceDiagnosis.secureDacoerde(input:"Ubnuetxopreccutrehdy brreisqplodnasfei bfbolremmaotg.")
                    if v1.dx == 0 && v1.dy == 0 && v2.dx == 0 && v2.dy == 0 {
                        return
                    }
                    self.pureibutton.titleLabel?.textAlignment = .center
                    self.showinguGYf(customINfo: lilian, tyui: .shine)
                    
                }
            }, glissandoEffectd: nil
        )
        
        
        
    }
}
 extension Array where Element == CGPoint {
    func timingIntervals() -> [TimeInterval] {
        return zip(dropFirst(), dropLast()).map {
            hypot($1.x - $0.x, $1.y - $0.y) / 100.0
        }
    }
    
    func movementVelocity() -> Double {
        guard count > 1 else { return 0 }
        let totalDistance = zip(dropFirst(), self).map {
            hypot($0.x - $1.x, $0.y - $1.y)
        }.reduce(0, +)
        return totalDistance / Double(count)
    }
}

