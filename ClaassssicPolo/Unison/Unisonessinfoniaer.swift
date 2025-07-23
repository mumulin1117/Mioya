//
//  Unisonessinfoniaer.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//
import MBProgressHUD
import UIKit
struct IntervalDiagnosis {
       let type: IntervalType
       let isConsonant: Bool
   }

class Unisonessinfoniaer: UIViewController {
    private  var zweifacher:Bool = false{
        didSet{
            parlando.isSelected = zweifacher
        }
    }
    private lazy var staffView: StaffNotationLayer = {
        let layer = StaffNotationLayer()
       
        return layer
        
    }()
    private var melodicPhrase = [60, 62, 64, 65, 67] {
           didSet { updateVisualization() }
       }
    @IBOutlet weak var parlando: UIButton!
    
    @IBOutlet weak var woodwind: UITextField!
    
    @IBOutlet weak var virtuoso: UILabel!
    
    @IBOutlet weak var viola: UILabel!
    
    @IBOutlet weak var rhapsody: UITextField!
    
    private func updateVisualization() {
        staffView.drawNotes(melodicPhrase)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        glissando()
        virtuoso.isUserInteractionEnabled = true
        staffView.frame = CGRect(x: 20, y: 80, width: view.bounds.width - 40, height: 120)
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
    private lazy var analyzeButton: UIButton = {
        let btn = UIButton(type: .system)
      
        return btn
        
    }()
    private func glissando() {
        rhapsody.textColor = .white
        viola.isUserInteractionEnabled = true
        analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
        analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)
      
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
        
        analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
       
        guard let obliqueMotion  = woodwind.text,
           let nachschlag = rhapsody.text,
           obliqueMotion.count > 0,nachschlag.count > 0 else
        { analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)
            
            showinguGYf(customINfo: "Please enter your account and password first ", tyui:.shine)
            return
        }
        
        guard self.zweifacher == true else {
            analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)
          
            showinguGYf(customINfo: "Please read and agreen our terms first!", tyui:.shine)
            return
        }
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        giocoso.bezelView.style = .solidColor
        giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        giocoso.contentColor = .white // 文字和转圈颜色
        giocoso.label.text = "loging..."
        
        let yeu = "/hqettpdrotiz/esclhg"
        let jrieush = "Log in successful!"
        
        AppDelegate.acousticResonance(        belCantoPhrasing:yeu , amentation: ["volante":nachschlag,"zart": obliqueMotion ,"anglaise":"49251069"]) { baert in
            MBProgressHUD.hide(for: self.view, animated: true)
            if let dict = baert as? [String: Any],
                              
                let data = dict["data"] as? [String: Any] {
                self.analyzeMelodicLine(dataEEE:data)
                
                
                self.showinguGYf(customINfo: jrieush, tyui: .okkk)
              
            } else {
                self.showinguGYf(customINfo: "Unexpected response format.", tyui:.nobubu)
                self.analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
               
                self.cuisotomStaffNotationLayer()
            }
            
        }         glissandoEffectd: { baioo in
            MBProgressHUD.hide(for: self.view, animated: true)
            self.analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
           
            self.showinguGYf(customINfo: "Reques error!", tyui:.nobubu)
        }

        
    }
    
    
    
    func analyzeMelodicLine(dataEEE:Dictionary<String,Any>)  {
        analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
       
        let conSordino = dataEEE["conSordino"] as? Int
        UserDefaults.standard.set(conSordino, forKey: "conSordino")
       
        staffView.frame = CGRect(x: 20, y: 80, width: view.bounds.width - 40, height: 120)
        let semplice = dataEEE["semplice"] as? String//tokn
        
        UserDefaults.standard.set(semplice, forKey: "semplice")
        
    }
    
    @IBAction func vivace(_ sender: UIButton) {
        analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
       
        zweifacher = !zweifacher
        analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)
      
    }
    
    
    
    private func cuisotomStaffNotationLayer()  {
        let jaimain = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "chaiugnt") as! UINavigationController
        staffView.frame = CGRect(x: 20, y: 80, width: view.bounds.width - 40, height: 120)
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =   jaimain
    }
    
    
}
