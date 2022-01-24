//
//  Event.swift
//  AnalyticsManager
//
//  Created by Pallav Trivedi on 02/01/22.
//

import Foundation

enum AnalyticsEvent: CaseIterable {
    static var allCases: [AnalyticsEvent] {
        return [
            subscriptionPageViewed,
            downloadSuccessful(contentID: ""),
            downloadFailed(contentID: "", error: "")
        ]
    }
    
    case subscriptionPageViewed
    case downloadSuccessful(contentID: String)
    case downloadFailed(contentID: String, error: String)

    var name: String {
        switch self {
        case .subscriptionPageViewed: return "Subscription Page Viewed"
        case .downloadSuccessful:     return "Download Successful"
        case .downloadFailed:         return "Download Failed"
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .downloadSuccessful(contentID: let id):
            return ["contentID": id]
        case .downloadFailed(contentID: let id, error: let error):
            return ["contentID": id, "error": error]
        case .subscriptionPageViewed:
            return nil
        }
    }
}

extension AnalyticsEvent: Equatable {
}
