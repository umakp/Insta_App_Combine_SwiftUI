//
//  Notifications.swift
//  Instagram_Clone
//
//  Created by Umamaheshwari on 9/10/23.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift

struct Notification: Decodable, Identifiable {
    @DocumentID var id: String?
    var postId: String?
    var username: String
    var profileImageURL: String?
    var timestamp: Timestamp
    var uid: String
    var type: NotificationType
    
    var post: Post?
    var user: User?
    var didFollow: Bool? = false
}

enum NotificationType: Int, Decodable {
    case follow
    case comment
    case like
    
    
    var notificationsMessage: String {
        switch self {
        case .like:
            return " liked one of your posts."
        case .comment:
            return " commented on one of your posts."
        case .follow:
            return " started following you."
        }
    }
}
