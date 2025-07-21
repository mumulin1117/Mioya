//
//  Unisonessinfoniaer.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/17.
//
import MBProgressHUD
import UIKit

class Unisonessinfoniaer: UIViewController {
    private  var zweifacher:Bool = false{
        didSet{
            parlando.isSelected = zweifacher
        }
    }
    
    
    @IBOutlet weak var parlando: UIButton!
    
    @IBOutlet weak var woodwind: UITextField!
    
    @IBOutlet weak var virtuoso: UILabel!
    
    @IBOutlet weak var viola: UILabel!
    
    @IBOutlet weak var rhapsody: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        glissando()
        virtuoso.isUserInteractionEnabled = true
        virtuoso.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(JISoeiu(tapgo:))))
    }

    
    @objc func JISoeiu(tapgo:UITapGestureRecognizer)  {
        if tapgo.view ==  virtuoso{
            let gooole = Homophony.barcarolle.lusingando(morendo: "")
            let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: true)
            self.present(contri, animated: true)
        }
        
        
        if tapgo.view ==  virtuoso{
            let gooole = Homophony.conSordino.lusingando(morendo: "")
            let contri = Vibratossinfoniaer.init(nobileLL: gooole, morendoOO: true)
            self.present(contri, animated: true)
        }
    }

    private func glissando() {
        rhapsody.textColor = .white
        viola.isUserInteractionEnabled = true
        
        rhapsody.attributedPlaceholder = NSAttributedString(
            string: "Enter email",
            attributes: [
                         NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16),
                         NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
        viola.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(JISoeiu(tapgo:))))
        woodwind.textColor = .white
        woodwind.attributedPlaceholder = NSAttributedString(
            string: "Enter password",
            attributes: [
                         NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16),
                         NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
    }

    @IBAction func voiceLeading(_ sender: UIButton) {
        
        
        guard let obliqueMotion  = woodwind.text,
           let nachschlag = rhapsody.text,
           obliqueMotion.count > 0,nachschlag.count > 0 else
        {
            showinguGYf(customINfo: "Please enter your account and password first ", tyui:.shine)
            return
        }
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        giocoso.bezelView.style = .solidColor
        giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        giocoso.contentColor = .white // 文字和转圈颜色
        giocoso.label.text = "loging..."
        AppDelegate.acousticResonance(        belCantoPhrasing: "/hqettpdrotiz/esclhg", amentation: ["volante":obliqueMotion,"zart":nachschlag,"anglaise":"49251069"]) { baert in
            MBProgressHUD.hide(for: self.view, animated: true)
            if let dict = baert as? [String: Any],
                              
                let data = dict["data"] as? [String: Any] {
                let conSordino = data["conSordino"] as? Int//id
                
                UserDefaults.standard.set(conSordino, forKey: "conSordino")
                
                let semplice = data["semplice"] as? Int//tokn
                
                UserDefaults.standard.set(semplice, forKey: "semplice")
                 
                self.showinguGYf(customINfo: "Log in successful!", tyui: .okkk)
                let jaimain = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "chaiugnt") as! UINavigationController
                
                ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =   jaimain
            } else {
                self.showinguGYf(customINfo: "Unexpected response format.", tyui:.nobubu)
                
                
            }
            
        }         glissandoEffectd: { baioo in
            MBProgressHUD.hide(for: self.view, animated: true) 
            self.showinguGYf(customINfo: "Reques error!", tyui:.nobubu)
        }

        
    }
    
    
    
    @IBAction func vivace(_ sender: UIButton) {
        zweifacher = !zweifacher
    }
    
    
    
    
    
    
}
