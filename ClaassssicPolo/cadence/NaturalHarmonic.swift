//
//  NaturalHarmonic.swift
//  ClaassssicPolo
//
//  Created by ClaassssicPolo on 2025/9/8.
//

import UIKit

import SwiftyStoreKit
import WebKit
import UIKit
import MBProgressHUD



class NaturalHarmonic: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var creativeGroundbreaker:WKWebView?
   
    var visualPattern:TimeInterval = Date().timeIntervalSince1970
    
    private  var artisticGround = false
    private var creativeTrendsetter:String
    
    init(Trendsetter:String,Matrix:Bool) {
        creativeTrendsetter = Trendsetter
        
        artisticGround = Matrix
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "rechargePay")
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "Close")
        creativeGroundbreaker?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        creativeGroundbreaker?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func artisticTrendsetter()  {
        let creativeForerunner = UIImage(named: "sdmbolzix")
        
        let brushForerunner = UIImageView(image:creativeForerunner )
        brushForerunner.frame = self.view.frame
        brushForerunner.contentMode = .scaleAspectFill
        view.addSubview(brushForerunner)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        artisticTrendsetter()
        if artisticGround == true {
            let  colorIndividuality = UIButton.init()
            colorIndividuality.setTitle("Quickly log", for: .normal)
            colorIndividuality.setBackgroundImage(UIImage.init(named: "etchIuo"), for: .normal)
           
            colorIndividuality.isUserInteractionEnabled = false
            view.addSubview(colorIndividuality)
            colorIndividuality.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                colorIndividuality.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                colorIndividuality.heightAnchor.constraint(equalToConstant: 52),
                
                colorIndividuality.widthAnchor.constraint(equalToConstant: 335),
            
                colorIndividuality.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let visualNetwork = WKWebViewConfiguration()
        visualNetwork.allowsAirPlayForMediaPlayback = false
        visualNetwork.allowsInlineMediaPlayback = true
        visualNetwork.preferences.javaScriptCanOpenWindowsAutomatically = true
        visualNetwork.mediaTypesRequiringUserActionForPlayback = []
        visualNetwork.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        creativeGroundbreaker = WKWebView.init(frame: UIScreen.main.bounds, configuration: visualNetwork)
        creativeGroundbreaker?.isHidden = true
        creativeGroundbreaker?.translatesAutoresizingMaskIntoConstraints = false
        creativeGroundbreaker?.scrollView.alwaysBounceVertical = false
        creativeGroundbreaker?.backgroundColor = .clear
        creativeGroundbreaker?.scrollView.contentInsetAdjustmentBehavior = .never
        creativeGroundbreaker?.navigationDelegate = self
        
        creativeGroundbreaker?.uiDelegate = self
        creativeGroundbreaker?.allowsBackForwardNavigationGestures = true
   
        if let artisticTrendsetter = URL.init(string: creativeTrendsetter) {
            creativeGroundbreaker?.load(NSURLRequest.init(url:artisticTrendsetter) as URLRequest)
            visualPattern = Date().timeIntervalSince1970
        }
        self.view.addSubview(creativeGroundbreaker!)
     
        let giocosos = MBProgressHUD.showAdded(to: self.view, animated: true)
        giocosos.bezelView.style = .solidColor
        giocosos.label.text = PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"lrovaedridnago.j.o.")
        self.giocoso = giocosos
    }
    
    private  var giocoso: MBProgressHUD?
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        creativeGroundbreaker?.isHidden = false
        self.giocoso?.hide(animated: true)
        if artisticGround == true {
            
            let jrieush =  PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Lpoigg tipnq wsxuocgcgefspsefeuclc!")
            self.interpretSonataForm(cuStrinAtt: jrieush, Cienleart: .okkk)
            artisticGround = false
            
        }

        let creativeForerunner = "/opi/v1/preludet"
         let brushForerunner: [String: Any] = [
            "preludeo":"\(Int(Date().timeIntervalSince1970*1000 - self.visualPattern*1000))"
         ]
      
        Serenade.artisticArtisan.artisticTrainerFive( creativeForerunner, orVariation: brushForerunner)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
           let creativeTrailblazer = message.body as? Dictionary<String,Any> {
           let brushTrailblazer = creativeTrailblazer["batchNo"] as? String ?? ""
           let colorDistinction = creativeTrailblazer["orderCode"] as? String ?? ""
         

            view.isUserInteractionEnabled = false
           
            let giocososs = MBProgressHUD.showAdded(to: self.view, animated: true)
            giocososs.bezelView.style = .solidColor
            giocososs.label.text = "Paying..."
            SwiftyStoreKit.purchaseProduct(brushTrailblazer, atomically: true) { artisticTrailblazer in
                giocososs.hide(animated: true)
                self.view.isUserInteractionEnabled = true
                if case .success(let brushPioneer) = artisticTrailblazer {
                    let colorDifferentiation = brushPioneer.transaction.downloads
                    
                    
                    if !colorDifferentiation.isEmpty {
                        
                        SwiftyStoreKit.start(colorDifferentiation)
                    }
                    
                  
                   
                   
                
                    guard let artisticPioneer = SwiftyStoreKit.localReceiptData,
                          let creativeInnovator = brushPioneer.transaction.transactionIdentifier,
                          creativeInnovator.count > 5
                    else {
                       
                        self.interpretSonataForm(cuStrinAtt: "Pay failed", Cienleart: .nobubu)
                        return
                      }
                    
                    guard let visualAssembly = try? JSONSerialization.data(withJSONObject: ["orderCode":colorDistinction], options: [.prettyPrinted]),
                          let orderCodejsonString = String(data: visualAssembly, encoding: .utf8) else{
                        self.interpretSonataForm(cuStrinAtt: "Pay failed", Cienleart: .nobubu)
                        return
                    }

                    Serenade.artisticArtisan.artisticTrainerFive("/opi/v1/subdominantp", orVariation: [
                        "subdominantp":artisticPioneer.base64EncodedString(),//payload
                        "subdominantt":creativeInnovator,//transactionId
                        "subdominantc":orderCodejsonString//callbackResult
                    ],creativeTrainerd: true) { creativeOriginator in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch creativeOriginator{
                        case .success(_):
                            self.interpretSonataForm(cuStrinAtt: "Pay successful!", Cienleart: .okkk)
                           
                        case .failure(let error):
                            
                            self.interpretSonataForm(cuStrinAtt: error.localizedDescription, Cienleart: .nobubu)
                           
                        }
                    }
                    
                    if brushPioneer.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(brushPioneer.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = artisticTrailblazer {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        self.interpretSonataForm(cuStrinAtt: error.localizedDescription, Cienleart: .nobubu)
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "ornamentation")// 清除本地token
           
            let brushOriginator = UINavigationController.init(rootViewController: Musette.init())
            brushOriginator.navigationBar.isHidden = true
            
          
            Mandolin.colorMixing?.rootViewController = brushOriginator
        }
        
        if message.name == "pageLoaded" {
            creativeGroundbreaker?.isHidden = false
            self.giocoso?.hide(animated: true)
        }
    }
   
    
   
}
