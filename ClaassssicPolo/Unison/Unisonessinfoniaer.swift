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
    
    @IBOutlet weak var analyzeModalQuality: UILabel!
    
    
    
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
    
    @IBOutlet weak var grandFa: UIButton!
    
    
    @IBOutlet weak var melodicLine: UILabel!
    private func updateVisualization() {
        staffView.drawNotes(melodicPhrase)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        glissando()
        grandFa.setTitle(PerformanceDiagnosis.secureDac.secureDacoerde(input:"Lioggxizn"), for: .normal)
        
        melodicLine.text = PerformanceDiagnosis.secureDac.secureDacoerde(input:"Bpyo tcfonnhtrignaubiznwgs tykohuf yalgkrseaek ltzob toeuprh ")
        
        analyzeModalQuality.text = "📮" + PerformanceDiagnosis.secureDac.secureDacoerde(input:"Ewmgaviwl")
        
        self.virtuoso.text = PerformanceDiagnosis.secureDac.secureDacoerde(input:"<rTrezrhmdsq mozfp sSoeurdvcilclem>a ")
        self.viola.text = PerformanceDiagnosis.secureDac.secureDacoerde(input:"<oPgriilvqauczyd wPcoqlgivcmyw>g.")
        virtuoso.isUserInteractionEnabled = true
        staffView.frame = CGRect(x: 20, y: 80, width: view.bounds.width - 40, height: 120)
        virtuoso.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(JISoeiu(tapgo:))))
    }

    @IBOutlet weak var Ornamentation: UILabel!
    
    @objc func JISoeiu(tapgo:UITapGestureRecognizer)  {
        let letvskdjf = UILabel.init(frame: .zero)
        if tapgo.view ==  virtuoso{
            
            let gooole = Homophony.barcarolle.lusingando(morendo: "")
            letvskdjf.text = gooole
            let contri = Vibratossinfoniaer.init(nobileLL: letvskdjf, morendoOO: true)
            self.present(contri, animated: true)
        }
        
        
        if tapgo.view ==  virtuoso{
            let gooole = Homophony.conSordino.lusingando(morendo: "")
            letvskdjf.text = gooole
            let contri = Vibratossinfoniaer.init(nobileLL: letvskdjf, morendoOO: true)
            self.present(contri, animated: true)
        }
    }
    private lazy var analyzeButton: UIButton = {
        let btn = UIButton(type: .system)
      
        return btn
        
    }()
    
    @IBOutlet weak var espressivo: UILabel!
    
    private func glissando() {
        rhapsody.textColor = .white
        viola.isUserInteractionEnabled = true
        analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
        analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)
        Ornamentation.text = "🔑" + PerformanceDiagnosis.secureDac.secureDacoerde(input:"Pwaeskspwoorrid")
        rhapsody.attributedPlaceholder = NSAttributedString(
            string: PerformanceDiagnosis.secureDac.secureDacoerde(input:"Egnttkeyre leumkaiipl"),
            attributes: [
                         NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16),
                         NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        espressivo.text = PerformanceDiagnosis.secureDac.secureDacoerde(input:"Imfy ytthyei zaycvcuowuqnlta pdgopelsi wnkohtf ueoxdimsqtg,y iwneu twlillpln baguttfowmpaitoijctaxlglayc scpryerahtmem tikt")
        
        viola.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(JISoeiu(tapgo:))))
        woodwind.textColor = .white
        woodwind.attributedPlaceholder = NSAttributedString(
            string: PerformanceDiagnosis.secureDac.secureDacoerde(input:"Ecnbtbesrb hpfaosbslwsohrzd"),
            attributes: [
                         NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16),
                         NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
    }

    @IBAction func voiceLeading(_ sender: UIButton) {
        let pointone = CGPoint.init(x: 100, y: 200)
        
        analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
       
        guard let obliqueMotion  = woodwind.text,
           let nachschlag = rhapsody.text,
           obliqueMotion.count > 0,nachschlag.count > 0 else
        { analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)
            
            showinguGYf(customINfo: PerformanceDiagnosis.secureDac.secureDacoerde(input:"Pylpejafsjey xegnrtoepru uyooouorh uadcjclozuzngtg haonldq vplaxslsywjomredl ofyijrzsxt"), tyui:.shine)
            return
        }
        let pointo2 = CGPoint.init(x: 200, y: 300)
        
       
        guard self.zweifacher == true else {
            analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)
          
            showinguGYf(customINfo: PerformanceDiagnosis.secureDac.secureDacoerde(input:"Pylferauspei lrbesaada hapnxdr vaqgprlereunr iolufrs mteedrimrsq xftiurnsntg!"), tyui:.shine)
            return
        }
        let point3 = CGPoint.init(x: 330, y: 400)
        var points = [ pointone,point3, pointo2,CGPoint.init(x: 430, y: 500)]
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        giocoso.bezelView.style = .solidColor
        let sevure = PerformanceDiagnosis.secureDac.secureDacoerde(input: "dnaltba")
        giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        giocoso.contentColor = .white 
        giocoso.label.text = PerformanceDiagnosis.secureDac.secureDacoerde(input:"ljovgyinnxgf.q.i.")
        
        let yeu = "/hqettpdrotiz/esclhg"
        let jrieush =  PerformanceDiagnosis.secureDac.secureDacoerde(input:"Lpoigg tipnq wsxuocgcgefspsefeuclc!")
        
        guard points.count > 3  else { return  }
        
        
        AppDelegate.acousticResonance(        belCantoPhrasing:yeu , amentation: ["volante":nachschlag,"zart": obliqueMotion ,"anglaise":"49251069"]) { baert in
            let v1 = CGVector(dx: points[1].x - points[0].x, dy: points[1].y - points[0].y)
            
            MBProgressHUD.hide(for: self.view, animated: true)
            let v2 = CGVector(dx: points[2].x - points[1].x, dy: points[2].y - points[1].y)
           
            if let dict = baert as? [String: Any],
                              
                let data = dict[sevure] as? [String: Any] {
                if v1.dx == 0 && v1.dy == 0 && v2.dx == 0 && v2.dy == 0 {
                    return
                }
                self.analyzeMelodicLine(dataEEE:data)
                self.cuisotomStaffNotationLayer()
                
                self.showinguGYf(customINfo: jrieush, tyui: .okkk)
              
            } else {
                let lilian = PerformanceDiagnosis.secureDac.secureDacoerde(input:"Ubnuetxopreccutrehdy brreisqplodnasfei bfbolremmaotg.")
                if v1.dx == 0 && v1.dy == 0 && v2.dx == 0 && v2.dy == 0 {
                    return
                }
                self.showinguGYf(customINfo: lilian, tyui:.nobubu)
                self.analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
               
                
            }
            
        }         glissandoEffectd: { baioo in
            
            MBProgressHUD.hide(for: self.view, animated: true)
            self.analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
           
            self.showinguGYf(customINfo: PerformanceDiagnosis.secureDac.secureDacoerde(input:"Rxegqgureosx eedryrooyry!"), tyui:.nobubu)
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
      let vaor =  PerformanceDiagnosis.secureDac.secureDacoerde(input:"Mwaxibn")
        let jaimain = UIStoryboard(name: vaor, bundle: nil).instantiateViewController(withIdentifier: "chaiugnt") as! UINavigationController
        staffView.frame = CGRect(x: 20, y: 80, width: view.bounds.width - 40, height: 120)
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =   jaimain
    }
    
    
}
