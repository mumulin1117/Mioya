//
//  MUNDFlRNocturne.swift
//  Mioya
//
//  Created by MUNDFlR Developer on 2026/01/27.
//

import UIKit
import Security


class MUNDFlRNocturne: NSObject {

    private static var MUNDFlR_OrchestraService: String {
        return Bundle.main.bundleIdentifier ?? "com.mioya.music.service"
    }

    private static let MUNDFlR_SoloistIdentityKey = "com.mioya.auth.soloist"
    private static let MUNDFlR_CadenceTokenKey = "com.mioya.auth.cadence"
    
    static func MUNDFlR_FetchPerformanceSignature() -> String {
       
        if let MUNDFlR_ExistingEcho = MUNDFlR_RetrieveFromScore(MUNDFlR_Part: MUNDFlR_SoloistIdentityKey) {
            return MUNDFlR_ExistingEcho
        }
        
        let MUNDFlR_NewMelody = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
       
        MUNDFlR_ArchiveToScore(MUNDFlR_Note: MUNDFlR_NewMelody, MUNDFlR_Part: MUNDFlR_SoloistIdentityKey)
       
        return MUNDFlR_NewMelody
    }

   
    static func MUNDFlR_SyncMusicTheory(_ MUNDFlR_Theory: String) {
        MUNDFlR_ArchiveToScore(MUNDFlR_Note: MUNDFlR_Theory, MUNDFlR_Part: MUNDFlR_CadenceTokenKey)
    }

  
    static func MUNDFlR_LoadMusicalKnowledge() -> String? {
        return MUNDFlR_RetrieveFromScore(MUNDFlR_Part: MUNDFlR_CadenceTokenKey)
    }
    
   
    
    private static func MUNDFlR_RetrieveFromScore(MUNDFlR_Part: String) -> String? {
        let MUNDFlR_SearchQuery: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: MUNDFlR_OrchestraService,
            kSecAttrAccount as String: MUNDFlR_Part,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        
        var MUNDFlR_ScoreData: AnyObject?
        let MUNDFlR_ReadStatus = SecItemCopyMatching(MUNDFlR_SearchQuery as CFDictionary, &MUNDFlR_ScoreData)
        
        guard MUNDFlR_ReadStatus == errSecSuccess,
              let MUNDFlR_Buffer = MUNDFlR_ScoreData as? Data,
              let MUNDFlR_Lyric = String(data: MUNDFlR_Buffer, encoding: .utf8) else {
            return nil
        }
        
        return MUNDFlR_Lyric
    }
  
    private static func MUNDFlR_ArchiveToScore(MUNDFlR_Note: String, MUNDFlR_Part: String) {
      
        MUNDFlR_SilenceScore(MUNDFlR_Part: MUNDFlR_Part)
        
        guard let MUNDFlR_DataStream = MUNDFlR_Note.data(using: .utf8) else { return }
        
        let MUNDFlR_Composition: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: MUNDFlR_OrchestraService,
            kSecAttrAccount as String: MUNDFlR_Part,
            kSecValueData as String: MUNDFlR_DataStream,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]
        
        SecItemAdd(MUNDFlR_Composition as CFDictionary, nil)
    }
    
    private static func MUNDFlR_SilenceScore(MUNDFlR_Part: String) {
        let MUNDFlR_ClearQuery: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: MUNDFlR_OrchestraService,
            kSecAttrAccount as String: MUNDFlR_Part
        ]
        
        SecItemDelete(MUNDFlR_ClearQuery as CFDictionary)
    }
}
