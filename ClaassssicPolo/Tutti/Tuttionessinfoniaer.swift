//
//  Tuttionessinfoniaer.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//

import UIKit
import MBProgressHUD
enum IntervalType: String, CaseIterable {
       case perfectUnison = "P1"
       case minorSecond = "m2"
       case majorSecond = "M2"
       // ...其他音程类型
       
       init(semitoneDistance: Int) {
           switch semitoneDistance {
           case 0: self = .perfectUnison
           case 1: self = .minorSecond
           case 2: self = .majorSecond
           // ...其他匹配
           default: self = .majorSecond
           }
       }
   }
class Tuttionessinfoniaer: UIViewController {

    
    @IBOutlet weak var ternary: UIImageView!
    
    
    @IBOutlet weak var serenade: UILabel!
    
    @IBOutlet weak var sextet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ternary.masklingColrm(clore: 55, isO: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dalSegno()
    }

    @IBAction func sinfonia(_ sender: UIButton) {
        
        let gooole = Homophony.wagnerTuba.lusingando(morendo: "")
        let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
        self.navigationController?.pushViewController(contri, animated: true)
    }
    
    @IBAction func sforzando(_ sender: UIButton) {
        let gooole = Homophony.xylorimba.lusingando(morendo: "")
        let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
        self.navigationController?.pushViewController(contri, animated: true)
    }
    
    
    
    @IBAction func perfectPitch(_ sender: UIButton) {
        var gooole = ""
        if sender.tag == 3 {
            gooole = Homophony.affettuoso.lusingando(morendo: "")
        }
        
        if sender.tag == 4 {
            gooole = Homophony.locrianMode.lusingando(morendo: "")
        }
        
        if sender.tag == 5 {
            gooole = Homophony.ziganeStyle.lusingando(morendo: "")
        }
        
        let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: false)
        self.navigationController?.pushViewController(contri, animated: true)
    }
    
    private func dalSegno(){
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        giocoso.bezelView.style = .solidColor
        giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        giocoso.contentColor = .white // 文字和转圈颜色
        giocoso.label.text = PerformanceDiagnosis.secureDacoerde(input:"lrovaedridnago.j.o.")
        let sevure = PerformanceDiagnosis.secureDacoerde(input: "dnaltba")
        let ggg = UserDefaults.standard.object(forKey: "conSordino") as? Int
        self.sextet.text = "UID: \(ggg ?? 0)"
        AppDelegate.acousticResonance(
            belCantoPhrasing: "/inkwjohixvz/jwrxzqzsemem",
            amentation: [
                "klangfarben":ggg ?? 0
            ],
            contrapunta: { response in
                self.dismissConductorStand()
               
                if let dict = response as? [String: Any],
                   
                    let chiaroscuro = dict[sevure]  as? [String: Any]  {
                    self.interpretSonataForm(chiaroscuro)
                    
                } else {
                    let lilian = PerformanceDiagnosis.secureDacoerde(input:"Ubnuetxopreccutrehdy brreisqplodnasfei bfbolremmaotg.")
                    
                    self.showinguGYf(customINfo: lilian, tyui: .shine)
                    
                }
            }, glissandoEffectd: nil
        )
        
        
        
    }
    
    private func interpretSonataForm(_ chiaroscuro:[String: Any]) {
        if let gdhdd = chiaroscuro["improvisatoryCadenza"] as? String {
            self.ternary.sprechstimme(tremolo: gdhdd)
        }
        
        
        self.serenade.text = chiaroscuro["ossia"] as? String
    }
    
    private func dismissConductorStand() {
        MBProgressHUD.hide(for: self.view, animated: true)
    }
}
