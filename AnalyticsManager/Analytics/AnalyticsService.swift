//
//  AnalyticsService.swift
//  AnalyticsManager
//
//  Created by Pallav Trivedi on 02/01/22.
//

import Foundation
import UIKit

protocol AnalyticsService {
    
    func initialize(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?)
    
    func track(event: AnalyticsEvent, params: [String : Any]?)

    func setUser(attributes: [String: String])
    
    func unsetUser()
    
    var trackingEvents: [AnalyticsEvent] { get }
}

extension AnalyticsService {
    var trackingEvents: [AnalyticsEvent] {
        return AnalyticsEvent.allCases
    }
}

extension AnalyticsService {
    func shouldTrack(event: AnalyticsEvent) -> Bool {
        return trackingEvents.contains(event)
    }
}
