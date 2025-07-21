//
//  AppDelegate.swift
//  ClaassssicPolo
//
//  Created by mumu on 2025/7/17.
//

import UIKit
import SwiftyStoreKit
import MBProgressHUD

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        if let yiau = UserDefaults.standard.object(forKey: "yiau") as? String {
            
            let jaimain = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "chaiugnt") as! UINavigationController
            
            window?.rootViewController =   jaimain
        }else{
            let jaimain = Unisonessinfoniaer.init()
            
            window?.rootViewController =   jaimain
        }
        
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in
            
        }
        
        
        window?.makeKeyAndVisible()
        return true
    }

    
   
  
    class func acousticResonance(
             belCantoPhrasing: String,
     amentation: [String: Any],
              contrapunta: ((Any?) -> Void)?,
             glissandoEffectd: ((Error) -> Void)?
 ) {
    
     guard let intonationPrecision = URL(string: "http://metadrive286.xyz/backtwo" +             belCantoPhrasing) else {
                             glissandoEffectd?(NSError(domain: "NetworkError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
         return
     }
     
     var jazzClassicalFusion = tonalColorism(Variation: intonationPrecision, woodwind:     amentation)
     var keyboardFingering = ["Content-Type": "application/json"]
    
     keyboardFingering["key"] = "49251069"
     let getoj =  UserDefaults.standard.object(forKey: "semplice") as? String ?? ""
     keyboardFingering["token"] = getoj
     keyboardFingering.forEach { jazzClassicalFusion.setValue($1, forHTTPHeaderField: $0) }
     
     let liederInterpretation = URLSessionConfiguration.default
     liederInterpretation.timeoutIntervalForRequest = 30
     liederInterpretation.timeoutIntervalForResource = 60
     

     
     URLSession(configuration: liederInterpretation).dataTask(with: jazzClassicalFusion) { data, response, error in
         DispatchQueue.main.async {

             guard let rubaerttoTiming = data else {
                                     
                 glissandoEffectd?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                 return
             }

             print("Raw response:", String(data: rubaerttoTiming, encoding: .utf8) ?? "Non-UTF8 data")
      
             do {
                 let scordaturaTuning = try JSONSerialization.jsonObject(with: rubaerttoTiming, options: [.mutableContainers, .allowFragments])
                                                 contrapunta?(scordaturaTuning)
             } catch let parseError {
  
                                     glissandoEffectd?(NSError(
                     domain: "ParseError",
                     code: -4,
                     userInfo: [
                         NSLocalizedDescriptionKey: "Failed to parse : \(parseError.localizedDescription)",
                         "rawResponse": String(data: rubaerttoTiming, encoding: .utf8) ?? "Non-text data",
                         "underlyingError": parseError
                     ]
                 ))
             }
         }
     }.resume()
 }
     
  
     
     private class func tonalColorism(Variation:URL,woodwind: [String: Any]) -> URLRequest {
         var nonLegatoTouch = URLRequest(
                     url: Variation,
                     cachePolicy: .useProtocolCachePolicy,
                     timeoutInterval: 30
                 )
         
         nonLegatoTouch.httpMethod = "POST"
         nonLegatoTouch.setValue("application/json", forHTTPHeaderField: "Content-Type")
         nonLegatoTouch.setValue("application/json", forHTTPHeaderField: "Accept")
         nonLegatoTouch.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
         
         nonLegatoTouch.httpBody = try? JSONSerialization.data(withJSONObject: woodwind, options: [])
         
         
        
         return nonLegatoTouch
      }

}



extension UIViewController{
    enum InfoTYOE {
    
        case okkk
        case nobubu
        case shine
    }
    func showinguGYf(customINfo:String,tyui:InfoTYOE)  {
        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
        hud.mode = .customView
        if tyui == .okkk {
            hud.customView = UIImageView(image: UIImage(named: "checkmark")) //
        }
        if tyui == .nobubu {
            hud.customView = UIImageView(image: UIImage(named: "")) //
        }
        if tyui == .shine {
            hud.mode = .text // 纯文本模式
            hud.offset = CGPoint(x: 0, y: -100)
        }
        hud.contentColor = .black
        hud.backgroundColor = UIColor.init(white: 1, alpha: 0.2)
           
        MBProgressHUD.appearance().bezelView.style = .solidColor
        hud.label.text = customINfo
        hud.label.numberOfLines = 2
        hud.hide(animated: true, afterDelay: 1.5) // 1.5秒后自动消失
    }
}


enum Homophony:String {

    case appoggiatura = "pages/AIexpert/index?"
    case bariolage = "pages/repository/index?current="
    case coloratura = "pages/AromatherapyDetails/index?dynamicId="
    case doubleTonguing = "pages/DynamicDetails/index?dynamicId="
    case echappee = "pages/VideoDetails/index?dynamicId="
    case flautando = "pages/issue/index?"
    case gruppetto = "pages/postVideos/index?"
    case intonation = "pages/homepage/index?userId="
    case jetWhistle = "pages/report/index?"
    case klangfarben = "pages/information/index?"
    case locrianMode = "pages/EditData/index?"
    
    case wagnerTuba = "pages/attentionList/index?type=1&"
    case xylorimba = "pages/attentionList/index?type=2&"
    case ziganeStyle = "pages/wallet/index?"
    case affettuoso = "pages/SetUp/index?"
    case barcarolle = "pages/Agreement/index?type=1&"
    case conSordino = "pages/Agreement/index?type=2&"
    case dolcissimo = "pages/privateChat/index?userId="
 
    case espressivo = ""
    
    func lusingando(morendo:String) -> String {
        let quadrille = "http://metadrive286.xyz/#"
        if self != .espressivo {
            let getoj =  UserDefaults.standard.object(forKey: "semplice") as? String ?? ""
            return  quadrille + self.rawValue + morendo + "&token=" + getoj + "&appID=49251069"
        }
        return  quadrille
 
    }
}
