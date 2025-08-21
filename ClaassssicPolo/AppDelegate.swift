//
//  AppDelegate.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//

import UIKit
import SwiftyStoreKit
import MBProgressHUD
struct IntervalAnalysis {
        let consonantCount: Int
        let dissonantCount: Int
        let uniqueIntervalTypes: Set<IntervalType>
    }
@main


class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        prepareConcertStage()
        
        let maestroDecision = consultMaestro()
            
        window?.rootViewController = maestroDecision
        
        orchestrateSilentOvertures()
            
        
        
        window?.makeKeyAndVisible()
        return true
    }

    
    private func prepareConcertStage() {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    private func consultMaestro() -> UIViewController {
        let symphonyArchive = UserDefaults.standard
        let hasEncryptedScore = symphonyArchive.object(forKey: "semplice") as? String != nil
        
        return hasEncryptedScore ?
            assemblePhilharmonicEnsemble() :
            improviseJazzSoloist()
    }
    
    private func assemblePhilharmonicEnsemble() -> UINavigationController {
        let vaor =  PerformanceDiagnosis.secureDac.secureDacoerde(thmicD:"Mwaxibn")
        let sonataScript = UIStoryboard(name: vaor, bundle: nil)
        return sonataScript.instantiateViewController(
            withIdentifier: "chaiugnt"
        ) as! UINavigationController
    }

  
    private func improviseJazzSoloist() -> UIViewController {
        return Unisonessinfoniaer.init()
    }

    private func orchestrateSilentOvertures() {
        DispatchQueue.global(qos: .background).async {
          
            SwiftyStoreKit.completeTransactions(atomically: true) { _ in }
        }
        
        DispatchQueue.main.async { [weak window] in
     
            window?.spotlightCenterStage()
        }
    }
    
    
    
    
    
   

}



extension UIViewController{
    enum InfoTYOE {
    
        case okkk
        case nobubu
        case shine
    }
    func interpretSonataForm(cuStrinAtt:String,Cienleart:InfoTYOE)  {
        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
        hud.mode = .customView
        if Cienleart == .okkk {
            hud.customView = UIImageView(image: UIImage(named: "checkmark")) //
        }
        if Cienleart == .nobubu {
            hud.customView = UIImageView(image: UIImage(named: "")) //
        }
        if Cienleart == .shine {
            hud.mode = .text // 纯文本模式
            hud.offset = CGPoint(x: 0, y: -100)
        }
        hud.contentColor = .black
        hud.backgroundColor = UIColor.init(white: 1, alpha: 0.2)
           
        MBProgressHUD.appearance().bezelView.style = .solidColor
        hud.label.text = cuStrinAtt
        hud.label.numberOfLines = 2
        hud.hide(animated: true, afterDelay: 1.5) // 1.5秒后自动消失
    }
}



extension UIWindow {
    fileprivate func spotlightCenterStage() {
        self.makeKeyAndVisible()
    }
}
