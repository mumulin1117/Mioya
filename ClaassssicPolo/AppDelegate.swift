//
//  AppDelegate.swift
//  ClaassssicPolo
//
//  Created by Miaoerw on 2025/7/17.
//
import FBSDKCoreKit

import AdjustSdk
import UIKit
import SwiftyStoreKit
import MBProgressHUD
struct IntervalAnalysis {
        let consonantCount: Int
        let dissonantCount: Int
        let uniqueIntervalTypes: Set<MUNDFlRLIntervalType>
    }
@main

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        MUNDFlRLprepareConcertStage()
        MUNDFlRLmusicresources()

            
        window?.rootViewController = MUNDFlRLMandolin()
        MUNDFlRLmusicinspiration()
        MUNDFlRLclassicalexploration()
        MUNDFlRLvolumetricRendering()
        MUNDFlRLrayTracingCores()
        
        window?.makeKeyAndVisible()
        return true
    }

    
    private func MUNDFlRLprepareConcertStage() {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    func MUNDFlRLconsultMaestro()  {
       let MUNDFlRLsymphonyArchive = UserDefaults.standard
       let MUNDFlRLhasEncryptedScore = MUNDFlRLsymphonyArchive.object(forKey: "semplice") as? String != nil
       
     
        
                
        let MUNDFlRLmaestroDecision = MUNDFlRLhasEncryptedScore ?
        MUNDFlRLassemblePhilharmonicEnsemble() :
        MUNDFlRLimproviseJazzSoloist()
                    
        window?.rootViewController = MUNDFlRLmaestroDecision
   }
    private func MUNDFlRLassemblePhilharmonicEnsemble() -> UINavigationController {
        let MUNDFlRLvaor =  MUNDFlRLPerformanceDiagnosis.MUNDFlRLsecureDac.MUNDFlRLsecureDacoerde(MUNDFlRLthmicD:"Mwaxibn")
        let sonataScript = UIStoryboard(name: MUNDFlRLvaor, bundle: nil)
        return sonataScript.instantiateViewController(
            withIdentifier: "chaiugnt"
        ) as! UINavigationController
    }

  
    private func MUNDFlRLimproviseJazzSoloist() -> UIViewController {
        return MUNDFlRLUnisonessinfoniaer.init()
    }

    private func MUNDFlRLclassicalexploration() {
        DispatchQueue.global(qos: .background).async {
          
            SwiftyStoreKit.completeTransactions(atomically: true) { musicallearning in
                
                for pianoartist in musicallearning {
                    switch pianoartist.transaction.transactionState {
                    case .purchased, .restored:
                       
                        let musicalinvolvement = pianoartist.transaction.downloads
                        
                        if !musicalinvolvement.isEmpty  {
                       
                            SwiftyStoreKit.start(musicalinvolvement)
                        } else if pianoartist.needsFinishTransaction {
                          
                            SwiftyStoreKit.finishTransaction(pianoartist.transaction)
                        }
                    case .failed, .purchasing, .deferred:
                        break
                    @unknown default:
                      break
                    }
                }
            }
        }
        
        DispatchQueue.main.async { [weak window] in
     
            window?.MUNDFlRLspotlightCenterStage()
        }
    }
    
    
    
    
    
   

}



extension UIViewController{
    enum MUNDFlRLInfoTYOE {
    
        case okkk
        case nobubu
        case shine
    }
    func MUNDFlRLinterpretSonataForm(MUNDFlRLcuStrinAtt:String,MUNDFlRLCienleart:MUNDFlRLInfoTYOE)  {
        let MUNDFlRLhud = MBProgressHUD.showAdded(to: self.view, animated: true)
        MUNDFlRLhud.mode = .customView
        if MUNDFlRLCienleart == .okkk {
            MUNDFlRLhud.customView = UIImageView(image: UIImage(named: "checkmark")) //
        }
        if MUNDFlRLCienleart == .nobubu {
            MUNDFlRLhud.customView = UIImageView(image: UIImage(named: "")) //
        }
        if MUNDFlRLCienleart == .shine {
            MUNDFlRLhud.mode = .text // 纯文本模式
            MUNDFlRLhud.offset = CGPoint(x: 0, y: -100)
        }
        MUNDFlRLhud.contentColor = .black
        MUNDFlRLhud.backgroundColor = UIColor.init(white: 1, alpha: 0.2)
           
        MBProgressHUD.appearance().bezelView.style = .solidColor
        MUNDFlRLhud.label.text = MUNDFlRLcuStrinAtt
        MUNDFlRLhud.label.numberOfLines = 2
        MUNDFlRLhud.hide(animated: true, afterDelay: 1.5) // 1.5秒后自动消失
    }
}



extension UIWindow {
    fileprivate func MUNDFlRLspotlightCenterStage() {
        self.makeKeyAndVisible()
    }
}

extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let musicalstudygroup = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        UserDefaults.standard.set(musicalstudygroup, forKey: "musiclegacystudy")

    }
}
extension AppDelegate{
    private func MUNDFlRLmusicresources() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    private func MUNDFlRLmusicinspiration()  {
        let MUNDFlRLclassicalworks = UITextField()
        MUNDFlRLclassicalworks.isSecureTextEntry = true

        if (!window!.subviews.contains(MUNDFlRLclassicalworks))  {
            window!.addSubview(MUNDFlRLclassicalworks)
            
            MUNDFlRLclassicalworks.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            MUNDFlRLclassicalworks.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(MUNDFlRLclassicalworks.layer)
           
            
            if #available(iOS 17.0, *) {
                
                MUNDFlRLclassicalworks.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                MUNDFlRLclassicalworks.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
}
extension AppDelegate{
    
    func MUNDFlRLrayTracingCores() {
        
        Adjust.adid { adId in
            DispatchQueue.main.async {
                if let location = adId {
                    UserDefaults.standard.set(location, forKey: "edgeComputingD")
                    
                }
            }
        }
    }
}
extension AppDelegate{
    
   
    private func MUNDFlRLvolumetricRendering() {
        let federatedLearningMUNDFlRL = ADJConfig(
               appToken: "oad9hvnx65fk",
               environment: ADJEnvironmentProduction
           )
        federatedLearningMUNDFlRL?.logLevel = .verbose
        federatedLearningMUNDFlRL?.enableSendingInBackground()
        Adjust.initSdk(federatedLearningMUNDFlRL)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "we0rto")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
}
