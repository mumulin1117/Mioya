//
//  MUNDFlRLNaturalHarmonic.swift
//  ClaassssicPolo
//
//  Created by ClaassssicPolo on 2025/9/8.
//

import UIKit

import SwiftyStoreKit
import WebKit
import UIKit
import MBProgressHUD
import AdjustSdk
import FBSDKCoreKit


class MUNDFlRLNaturalHarmonic: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var MUNDFlRLpianoperformance:WKWebView?
    var nowingMUNDFlRLProductID:String = ""
    
    var MUNDFlRLclassicalpiano:TimeInterval = Date().timeIntervalSince1970
    
    private  var MUNDFlRLclipsharing = false
    private var MUNDFlRLpianistlife:String
    
    init(MUNDFlRLmusicloverscircle:String,MUNDFlRLclassicaljourneyd:Bool) {
        MUNDFlRLpianistlife = MUNDFlRLmusicloverscircle
        
        MUNDFlRLclipsharing = MUNDFlRLclassicaljourneyd
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        MUNDFlRLpianoperformance?.configuration.userContentController.add(self, name: MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"raejcnheayrggcegPiaty"))
        MUNDFlRLpianoperformance?.configuration.userContentController.add(self, name: MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"Colqokste"))
        MUNDFlRLpianoperformance?.configuration.userContentController.add(self, name: MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"psafgveyLjoaaxdjecd"))
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        MUNDFlRLpianoperformance?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
    private lazy var MUNDFlRLrunfhui: UIImageView = {
        let MUNDFlRLmusicguide = UIImageView(image:UIImage(named: "MUNDFlRLsdmbolzixlianwed") )
        MUNDFlRLmusicguide.translatesAutoresizingMaskIntoConstraints = false
        MUNDFlRLmusicguide.contentMode = .scaleAspectFit
        return MUNDFlRLmusicguide
    }()
    private func MUNDFlRLartisticTrendsetter()  {
       
        let MUNDFlRLmusicguide = UIImageView(image:UIImage(named: "MUNDFlRLsdmbolzixlian") )
        MUNDFlRLmusicguide.frame = self.view.frame
        MUNDFlRLmusicguide.contentMode = .scaleAspectFill
        view.addSubview(MUNDFlRLmusicguide)
        
        view.addSubview(MUNDFlRLrunfhui)
        NSLayoutConstraint.activate([
           
            MUNDFlRLrunfhui.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            MUNDFlRLrunfhui.heightAnchor.constraint(equalToConstant: 116),
            
            MUNDFlRLrunfhui.widthAnchor.constraint(equalToConstant: 213),
        
            MUNDFlRLrunfhui.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 65 - 52 - 37)
        ])
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        MUNDFlRLartisticTrendsetter()
        if MUNDFlRLclipsharing == true {
            let  MUNDFlRLmusicalcollaboration = UIButton.init()
            MUNDFlRLmusicalcollaboration.setTitle(MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"Qvutijcwkmljyv lLhopg"), for: .normal)
            MUNDFlRLmusicalcollaboration.setBackgroundImage(UIImage.init(named: "MUNDFlRLetchIuo"), for: .normal)
           
            MUNDFlRLmusicalcollaboration.isUserInteractionEnabled = false
            view.addSubview(MUNDFlRLmusicalcollaboration)
            MUNDFlRLmusicalcollaboration.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                MUNDFlRLmusicalcollaboration.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                MUNDFlRLmusicalcollaboration.heightAnchor.constraint(equalToConstant: 52),
                
                MUNDFlRLmusicalcollaboration.widthAnchor.constraint(equalToConstant: 335),
            
                MUNDFlRLmusicalcollaboration.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let MUNDFlRLtheoryworkshop = WKWebViewConfiguration()
        MUNDFlRLtheoryworkshop.allowsAirPlayForMediaPlayback = false
        MUNDFlRLtheoryworkshop.allowsInlineMediaPlayback = true
        MUNDFlRLtheoryworkshop.preferences.javaScriptCanOpenWindowsAutomatically = true
        MUNDFlRLtheoryworkshop.mediaTypesRequiringUserActionForPlayback = []
        MUNDFlRLtheoryworkshop.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        MUNDFlRLpianoperformance = WKWebView.init(frame: UIScreen.main.bounds, configuration: MUNDFlRLtheoryworkshop)
        MUNDFlRLpianoperformance?.isHidden = true
        MUNDFlRLpianoperformance?.translatesAutoresizingMaskIntoConstraints = false
        MUNDFlRLpianoperformance?.scrollView.alwaysBounceVertical = false
        MUNDFlRLpianoperformance?.backgroundColor = .clear
        MUNDFlRLpianoperformance?.scrollView.contentInsetAdjustmentBehavior = .never
        MUNDFlRLpianoperformance?.navigationDelegate = self
        
        MUNDFlRLpianoperformance?.uiDelegate = self
        MUNDFlRLpianoperformance?.allowsBackForwardNavigationGestures = true
   
        if let MUNDFlRLclassicalpianist = URL.init(string: MUNDFlRLpianistlife) {
            MUNDFlRLpianoperformance?.load(NSURLRequest.init(url:MUNDFlRLclassicalpianist) as URLRequest)
            MUNDFlRLclassicalpiano = Date().timeIntervalSince1970
        }
        self.view.addSubview(MUNDFlRLpianoperformance!)
     
        let MUNDFlRLmusicrehearsalWer = MBProgressHUD.showAdded(to: self.view, animated: true)
        MUNDFlRLmusicrehearsalWer.bezelView.style = .solidColor
        MUNDFlRLmusicrehearsalWer.label.text = MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"lrovaedridnago.j.o.")
        self.performancefeedback = MUNDFlRLmusicrehearsalWer
    }
    
    private  var performancefeedback: MBProgressHUD?
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let historicalperformance = navigationAction.request.url {
                    UIApplication.shared.open(historicalperformance,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        MUNDFlRLpianoperformance?.isHidden = false
        self.performancefeedback?.hide(animated: true)
        if MUNDFlRLclipsharing == true {
            
//            let composerworkshopv =  PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Lpoigg tipnq wsxuocgcgefspsefeuclc!")
//            self.interpretSonataForm(cuStrinAtt: composerworkshopv, Cienleart: .okkk)
            MUNDFlRLclipsharing = false
            
        }

        let learningtogether = MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"/nofprin/evf1n/rpurxerliutdfewt")
         let sicaldiscu: [String: Any] = [
            "preludeo":"\(Int(Date().timeIntervalSince1970*1000 - self.MUNDFlRLclassicalpiano*1000))"
         ]
      
        MUNDFlRLSerenade.MUNDFlRLartisticArtisan.MUNDFlRLclassicalmusicresearch( learningtogether, MUNDFlRLeanalysis: sicaldiscu)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"rxeccvhiaurighecPiany"),
           let MUNDFlRLmusicchatbot = message.body as? Dictionary<String,Any> {
           let MUNDFlRLpianotraining = MUNDFlRLmusicchatbot[MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"btaytzcdhrNro")] as? String ?? ""
           let MUNDFlRLclassicalartformd = MUNDFlRLmusicchatbot[MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"ocrjdhezryCjohdpe")] as? String ?? ""
         

            view.isUserInteractionEnabled = false
           
            let MUNDFlRLartisticexpression = MBProgressHUD.showAdded(to: self.view, animated: true)
            MUNDFlRLartisticexpression.bezelView.style = .solidColor
            MUNDFlRLartisticexpression.label.text = MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"Pbayysipnrga.o.t.")
            
            self.nowingMUNDFlRLProductID = MUNDFlRLpianotraining
            SwiftyStoreKit.purchaseProduct(MUNDFlRLpianotraining, atomically: true) { classicalstudy in
                MUNDFlRLartisticexpression.hide(animated: true)
                self.view.isUserInteractionEnabled = true
                if case .success(let serstudies) = classicalstudy {
                    let classicalfanbase = serstudies.transaction.downloads
                    
                    
                    if !classicalfanbase.isEmpty {
                        
                        SwiftyStoreKit.start(classicalfanbase)
                    }
                    
                  
                   
                   
                
                    guard let MUNDFlRLiniscence = SwiftyStoreKit.localReceiptData,
                          let MUNDFlRLpianomusician = serstudies.transaction.transactionIdentifier,
                          MUNDFlRLpianomusician.count > 5
                    else {
                       
                        self.interpretSonataForm(cuStrinAtt: MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"Pranyf gfoasiblveud"), Cienleart: .nobubu)
                        return
                      }
                    
                    guard let MUNDFlRLmusicpractice = try? JSONSerialization.data(withJSONObject: [MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"owrvdnelrwCyoddie"):MUNDFlRLclassicalartformd], options: [.prettyPrinted]),
                          let pianoteaching = String(data: MUNDFlRLmusicpractice, encoding: .utf8) else{
                        self.interpretSonataForm(cuStrinAtt: MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"Pdaiyi ofvarijluead"), Cienleart: .nobubu)
                        return
                    }

                    MUNDFlRLSerenade.MUNDFlRLartisticArtisan.MUNDFlRLclassicalmusicresearch(MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"/nozpaix/gvs1g/hseuobcdoodmnifnjatnhtbp"), MUNDFlRLeanalysis: [
                        "subdominantp":MUNDFlRLiniscence.base64EncodedString(),//payload
                        "subdominantt":MUNDFlRLpianomusician,//transactionId
                        "subdominantc":pianoteaching//callbackResult
                    ],MUNDFlRLmusicfeedback: true) { MUNDFlRLmusicenthusiast in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch MUNDFlRLmusicenthusiast{
                        case .success(_):
                            self.interpretSonataForm(cuStrinAtt: MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"Pbakyh fsyuscucfeksusofqualb!"), Cienleart: .okkk)
                            self.MUNDFlRLignitionTiming(MUNDFlRLlastTransactionID: MUNDFlRLpianomusician)
                        case .failure(let error):
                            
                            self.interpretSonataForm(cuStrinAtt: error.localizedDescription, Cienleart: .nobubu)
                           
                        }
                    }
                    
                    if serstudies.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(serstudies.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = classicalstudy {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        self.interpretSonataForm(cuStrinAtt: error.localizedDescription, Cienleart: .nobubu)
                    }
                    
                 
                }
            }
            
        }else if message.name == MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"Cllaonsoe") {

            UserDefaults.standard.set(nil, forKey: "ornamentation")// 清除本地token
           
            let MUNDFlRLhistoricalmusic = UINavigationController.init(rootViewController: MUNDFlRLMusette.init())
            MUNDFlRLhistoricalmusic.navigationBar.isHidden = true
            
          
            MUNDFlRLMandolin.MUNDFlRLcrescendo?.rootViewController = MUNDFlRLhistoricalmusic
        }
        
        if message.name == MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"pfatggevLdowaqdzecd") {
            MUNDFlRLpianoperformance?.isHidden = false
            self.performancefeedback?.hide(animated: true)
        }
    }
   
    private func MUNDFlRLignitionTiming(MUNDFlRLlastTransactionID:String) {
        let MUNDFlRLfuelMixtureRatios: [(String, String)] = [
            ("fywsmlajpyfqgtsb",MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"9j9w.v9g9") ),
            ("jykwuodfgsanqfgx", MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"4n9c.z9t9")),
            ("aghcndhkbgjvceks", MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"1e9c.g9m9")),
            ("qscffhtoiovyovaq",  MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"9u.z9y9")),
            ("nqjwvqtqfdzqjsmg", MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"4o.z9o9")),
            ("oyibnstobeihfdwd", MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"1x.k9q9")),
            ("jxutrbihkwijwtam",MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"0m.m9x9")),
            ("asihdklzislfirhd", MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"2t9u.e9v9")),
            
            ("lkjhgfdsazxcvbnm", MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"6p.g9v9")),
            ("mnbvcxzlkjhgfdsa", MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"2n.b9d9"))
        ]
        
        let MUNDFlRLcombustionChamber = MUNDFlRLfuelMixtureRatios.first { pistonRing in
            pistonRing.0 == self.nowingMUNDFlRLProductID
        }
        
        guard let MUNDFlRLcylinderHead = MUNDFlRLcombustionChamber,
              let sparkPlugGap = Double(MUNDFlRLcylinderHead.1) else {
            return
        }
        
        let MUNDFlRLexhaustManifold: [AppEvents.ParameterName: Any] = [
            .init(MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"tfoftfaclePgrhifcje")): sparkPlugGap,
            .init(MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"crudrgrgesnfchy")) :MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"UaSeD")
        ]
        
        AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: MUNDFlRLexhaustManifold)
        
        let MUNDFlRLcamshaftRotation = ADJEvent(eventToken: "m8rlm4")
        MUNDFlRLcamshaftRotation?.setProductId(self.nowingMUNDFlRLProductID)
        MUNDFlRLcamshaftRotation?.setTransactionId(MUNDFlRLlastTransactionID)
        MUNDFlRLcamshaftRotation?.setRevenue(sparkPlugGap, currency: MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"UaSeD"))
        
        Adjust.trackEvent(MUNDFlRLcamshaftRotation)
        
       
        
    }
   
}
