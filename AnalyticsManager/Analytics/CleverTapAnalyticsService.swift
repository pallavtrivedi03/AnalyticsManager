//
//  CleverTapAnalyticsService.swift
//  AnalyticsManager
//
//  Created by Pallav Trivedi on 02/01/22.
//

import Foundation
import UIKit

class CleverTapAnalyticsService: AnalyticsService {
    
    func initialize(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        //Initialisation of Clevertap
    }
    
    func track(event: AnalyticsEvent, params: [String : Any]?) {
        //getParams - 
        //CleverTap.shared.logEvent(......)
    }
    
    var trackingEvents: [AnalyticsEvent] {
        return [
            AnalyticsEvent.subscriptionPageViewed
        ]
    }
    
    func setUser(attributes: [String : String]) {
        //CleverTap.shared.setUser(......)
    }
    
    func unsetUser() {
        //CleverTap.shared.unsetUser(......)
    }
}
