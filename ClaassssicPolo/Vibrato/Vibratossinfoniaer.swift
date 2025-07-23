//
//  Vibratossinfoniaer.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//
import WebKit
import UIKit
import SwiftyStoreKit
import MBProgressHUD
class StaffNotationLayer: CALayer {
    func drawNotes(_ midiNotes: [Int]) {
        // 五线谱绘制逻辑
    }
    
    func highlightDissonances(_ indices: [Int]) {
        // 不协和音高亮动画
    }
}
class Vibratossinfoniaer: UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    private  var anglaise:String
    private var Nieh:Float = 88
    
    private lazy var analyzeButton: UIButton = {
        let btn = UIButton(type: .system)
       
        return btn
        
    }()
    @IBOutlet weak var unison: WKWebView!
    
    
 
    
    private  var morendo:Bool? = false
    
    func analyzeIntervalicRelationships(melodicLine: [Int]) -> IntervalAnalysis {
            let intervalProfile = melodicLine.indices.dropFirst().map {
                calculateIntervalQuality(from: melodicLine[$0-1], to: melodicLine[$0])
            }
            
            return IntervalAnalysis(
                consonantCount: intervalProfile.filter { $0.isConsonant }.count,
                dissonantCount: intervalProfile.filter { !$0.isConsonant }.count,
                uniqueIntervalTypes: Set(intervalProfile.map { $0.type }))
        }
        
                
    init(nobileLL: String,morendoOO:Bool? = false) {
        self.morendo = morendoOO
        self.anglaise = nobileLL
        super.init(nibName: nil, bundle: nil)
        analyzeButton.setTitleColor(.white, for: .normal)
        analyzeButton.setTitleColor(.red, for: .selected)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func rinforzando()  {
        characterDesign.append("dissonance")
        analyzeButton.setTitle("Analyze Contrapuntal Structure", for: .normal)
        
        characterDesign.append("doubleStop")
        characterDesign.append("embouchure")
        analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)

        characterDesign.append("ensemble")
        
        characterDesign.append("fingering")
    }
    
    
    func leitmotifDevelopment()  {
        characterDesign.forEach { info in
            unison.configuration.userContentController.add(self, name: info)
        }
    }
    
    func modalInterchange()  {
        unison.scrollView.showsVerticalScrollIndicator = false
        unison.backgroundColor = .clear
        
        unison.isHidden = true
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        unison.configuration.mediaTypesRequiringUserActionForPlayback = []
        giocoso.bezelView.style = .solidColor
        unison.configuration.allowsInlineMediaPlayback = true
        giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        unison.configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        giocoso.contentColor = .white // 文字和转圈颜色
        characterDesign.append("diminuendo")
        giocoso.label.text = PerformanceDiagnosis.secureDacoerde(input:"lrovaedridnago.j.o.")
        rinforzando()
        
        leitmotifDevelopment()
        
        
        
   
        unison.uiDelegate = self
       
        modalInterchange()
      
      
       
        unison.navigationDelegate = self
        analyzeButton.frame = CGRect(x: 50, y: 220, width: view.bounds.width - 100, height: 44)

        unison.scrollView.contentInsetAdjustmentBehavior = .never
     
        improvisatoryCadenza()
    }
                
    private func improvisatoryCadenza()  {
        if let url = URL(string:anglaise ) {
            let request = URLRequest(url: url)
           
            unison.load(request)
            
        }
    }
    var characterDesign:[String] = Array()
    

                private func calculateIntervalQuality(from note1: Int, to note2: Int) -> IntervalDiagnosis {
                     let semitoneDistance = abs(note1 - note2) % 12
                     return IntervalDiagnosis(
                         type: IntervalType(semitoneDistance: semitoneDistance),
                         isConsonant: [0, 3, 4, 5, 7, 8, 9].contains(semitoneDistance))
                 }
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        analyzeButton.setTitle(nil, for: .normal)
        analyzeButton.setTitleColor(.white, for: .normal)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.78, execute: DispatchWorkItem(block: {
            self.analyzeButton.setTitleColor(.red, for: .selected)
            webView.isHidden = false
            self.analyzeButton.setTitleColor(.blue, for: .highlighted)
            MBProgressHUD.hide(for: self.view, animated: true)
        }))
        
    }
    
               
    func detectTonalCenter(pitchCollection: [Int]) -> TonalityAssessment {
            let pitchClassDistribution = Dictionary(
                grouping: pitchCollection.map { $0 % 12 },
                by: { $0 }
            ).mapValues { $0.count }
            
            let probableRoot = pitchClassDistribution.max(by: { $0.value < $1.value })?.key ?? 0
            return TonalityAssessment(
                rootNote: probableRoot,
                modalCharacteristics: analyzeModalFeatures(pitchClasses: pitchClassDistribution.keys.sorted()))
        }
    
    
    
    func quadrupleStop(later:String,dhu:String)  {
        resultLabel.textColor = .white
        resultLabel.textAlignment = .center
        SwiftyStoreKit.purchaseProduct(later, atomically: true) { psResult in
            MBProgressHUD.hide(for: self.view, animated: true)
            self.resultLabel.textColor = .white
            
            self.view.isUserInteractionEnabled = true
            self.resultLabel.textAlignment = .center
            if case .success(let _) = psResult {
                self.showinguGYf(customINfo: dhu, tyui: .okkk)
                self.resultLabel.textColor = .white
                self.bisbigliando()
            }else if case .error(let error) = psResult {
                self.view.isUserInteractionEnabled = true
                self.resultLabel.textAlignment = .center
                if error.code != .paymentCancelled {
                    self.showinguGYf(customINfo: error.localizedDescription, tyui: .nobubu)
                  
                }
                
                
            }
            
        }
    }
    
    
    func bisbigliando() {
        self.unison.evaluateJavaScript("dissonance()", completionHandler: nil)
    }
    private lazy var staffView: StaffNotationLayer = {
           let layer = StaffNotationLayer()
        
           return layer
       }()
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        staffView.frame = CGRect(x: 20, y: 80, width: view.bounds.width - 40, height: 120)
        switch message.name {
        case "diminuendo":
            resultLabel.textColor = .white
            guard let piece = message.body  as? String else {
                return
            }
            let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
            self.view.isUserInteractionEnabled = false
          
            giocoso.bezelView.style = .solidColor
            giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
            giocoso.contentColor = .white // 文字和转圈颜色
            giocoso.label.text = PerformanceDiagnosis.secureDacoerde(input:"pbaqynirnsgy.o.w.")
            self.quadrupleStop(later: piece, dhu:PerformanceDiagnosis.secureDacoerde(input:"pvamyx ksbubcjcseesisbfcumla!"))
        case "doubleStop":
            kettledrumRoll(meaid:message)
        case "ensemble":
            resultLabel.textColor = .white
            if morendo != true {
                self.navigationController?.popViewController(animated: true)
               
                
            }else{
                self.dismiss(animated: true)
            }
           
        case "fingering":
            UserDefaults.standard.set(nil, forKey: "semplice")
            resultLabel.textColor = .white
            passageworkPractice()
           
            lusingando()
        default: break
        }
        
        
       
    }
   
    private let resultLabel = IntervalAnalysisLabel(frame: CGRect(x: 20, y: 280, width: 200, height: 60))
    
    func lusingando()  {
        let jaimain = Unisonessinfoniaer.init()
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = jaimain
    }
    
    // MARK: - 私有方法
        
    func analyzeModalFeatures(pitchClasses: [Int]) -> ModalTendency {
       let signatureTriads = [
           [0, 4, 7]: 1.0,  // 大三和弦
           [0, 3, 7]: 0.8   // 小三和弦
       ]
       
       var modalScore = 0.0
       for (triad, weight) in signatureTriads {
           if pitchClasses.contains(triad[0]) &&
              pitchClasses.contains(triad[1]) &&
              pitchClasses.contains(triad[2]) {
               modalScore += weight
           }
       }
       
       return modalScore > 1.5 ? .majorTonic :
              modalScore > 0.8 ? .minorDominant : .modalAmbiguity
   }

    
    func kettledrumRoll(meaid:WKScriptMessage)  {
        if let Analytics =  meaid.body as? String{
            let pushController = Vibratossinfoniaer.init(nobileLL: Analytics)
            resultLabel.textColor = .white
            self.navigationController?.pushViewController(pushController, animated: true)
            
            
        }
    }
    
    func passageworkPractice()  {
        UserDefaults.standard.set(nil, forKey: "conSordino")
    }


}
class IntervalAnalysisLabel: UILabel {
    func display(analysis: IntervalAnalysis) {
        // 专业分析结果展示样式
    }
}
