//
//  AnalyticsManager.swift
//  AnalyticsManager
//
//  Created by Pallav Trivedi on 02/01/22.
//

import Foundation
import UIKit

class AnalyticsManager: AnalyticsService {
    
    private(set) var services = [AnalyticsService]()
    
    static let shared = AnalyticsManager()
    private init() {}
    
    func add(service: AnalyticsService) {
        self.services.append(service)
    }
    
    func initialize(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        for service in services {
            service.initialize(
                application     : application,
                launchOptions   : launchOptions
            )
        }
    }
    
    func track(event: AnalyticsEvent, params: [String : Any]?) {
        for service in services where service.shouldTrack(event: event) {
            service.track(event: event, params: params)
        }
    }
    
    func setUser(attributes: [String : String]) {
        for service in services {
            service.setUser(attributes: attributes)
        }
    }
    
    func unsetUser() {
        for service in services {
            service.unsetUser()
        }
    }
}
