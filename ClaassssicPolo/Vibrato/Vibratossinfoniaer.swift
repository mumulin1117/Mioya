//
//  Vibratossinfoniaer.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/17.
//
import WebKit
import UIKit
import SwiftyStoreKit
import MBProgressHUD

class Vibratossinfoniaer: UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    
    @IBOutlet weak var unison: WKWebView!
    
    
    private  var anglaise:String
    
    private  var morendo:Bool? = false
    
    init(nobileLL: String,morendoOO:Bool? = false) {
        self.morendo = morendoOO
        self.anglaise = nobileLL
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
        giocoso.bezelView.style = .solidColor
        giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        giocoso.contentColor = .white // 文字和转圈颜色
        giocoso.label.text = "loading..."
//        let techniqueExchange = WKWebView(frame: UIScreen.main.bounds, configuration: self.conceptualArt())
        
       
    
       
        unison.configuration.mediaTypesRequiringUserActionForPlayback = []
        unison.configuration.allowsInlineMediaPlayback = true
        unison.configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        characterDesign.append("diminuendo")
        characterDesign.append("dissonance")
        characterDesign.append("doubleStop")
        characterDesign.append("embouchure")
        characterDesign.append("ensemble")
        
        characterDesign.append("fingering")
        
        characterDesign.forEach { info in
            unison.configuration.userContentController.add(self, name: info)
        }
        
        
        
        
        unison.uiDelegate = self
        unison.backgroundColor = .clear
        
        unison.isHidden = true
        unison.scrollView.showsVerticalScrollIndicator = false
        
       
      
  
        self.view.addSubview(self.unison)
        unison.navigationDelegate = self
        
        unison.scrollView.contentInsetAdjustmentBehavior = .never
        if let url = URL(string:anglaise ) {
            let request = URLRequest(url: url)
           
            unison.load(request)
            
        }
    }
    
    var characterDesign:[String] = Array()
    


    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            MBProgressHUD.hide(for: self.view, animated: true)
        }))
        
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        
        switch message.name {
        case "diminuendo":
            guard let piece = message.body  as? String else {
                return
            }
            self.view.isUserInteractionEnabled = false
            let giocoso = MBProgressHUD.showAdded(to: self.view, animated: true)
            giocoso.bezelView.style = .solidColor
            giocoso.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
            giocoso.contentColor = .white // 文字和转圈颜色
            giocoso.label.text = "paying..."
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                MBProgressHUD.hide(for: self.view, animated: true)
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    self.showinguGYf(customINfo: "Pay successful!", tyui: .okkk)
                    
                    self.unison.evaluateJavaScript("dissonance()", completionHandler: nil)
                }else if case .error(let error) = psResult {
                    self.view.isUserInteractionEnabled = true
                    if error.code == .paymentCancelled {
                        
                        return
                    }
                    self.showinguGYf(customINfo: error.localizedDescription, tyui: .nobubu)
                    
                }
                
            }
        case "doubleStop":
            if let Analytics =  message.body as? String{
                let pushController = Vibratossinfoniaer.init(nobileLL: Analytics)
                
                self.navigationController?.pushViewController(pushController, animated: true)
                
                
            }
        case "ensemble":
            if morendo == true {
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
        case "fingering":
            UserDefaults.standard.set(nil, forKey: "semplice")
            UserDefaults.standard.set(nil, forKey: "conSordino")
           
            let jaimain = Unisonessinfoniaer.init()
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = jaimain
        default: break
        }
    }



  
    



}
