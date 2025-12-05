//
//  ATTConsent.swift
//  trivia-app
//
//  Created by Taz Heath on 12/1/25.
//

import Foundation
import AppTrackingTransparency
import AdSupport
import GoogleMobileAds

enum ATTAuthorization {
    static func requestIfNeeded() {

        if ATTrackingManager.trackingAuthorizationStatus != .notDetermined {
            MobileAds.shared.start()
            return
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            ATTrackingManager.requestTrackingAuthorization { _ in
                DispatchQueue.main.async {
                    MobileAds.shared.start()
                }
            }
        }
    }
}


