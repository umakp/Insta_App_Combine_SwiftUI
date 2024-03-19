//
//  GridViewModel.swift
//  Instagram_Clone
//
//  Created by Umamaheshwari on 9/10/23.
//

import SwiftUI
import Firebase

enum PostGridConfig {
    case explore
    case profile(String)
}

class GridViewModel: ObservableObject {
    @Published var posts = [Post]()
    let config: PostGridConfig
    
    init(config: PostGridConfig) {
        self.config = config
        fetchPosts()
    }
    
    func fetchPosts() {
        switch config {
        case .explore:
            fetchPostsExplorePage()
        case .profile(let userID):
            fetchPostsProfile(withUid: userID)
        }
    }
    
    func fetchPostsExplorePage() {
        Firestore.firestore().collection("posts").getDocuments { (snap, err) in
            if let err = err {
                print(err.localizedDescription)
                return
            }
            
            guard let documents = snap?.documents else { return }
            self.posts = documents.compactMap({ try? $0.data(as: Post.self)})
        }
    }
    
    func fetchPostsProfile(withUid uid: String) {
        Firestore.firestore().collection("posts").whereField("ownerUid", isEqualTo: uid).getDocuments { (snap, err) in
            if let err = err {
                print(err.localizedDescription)
                return
            }
            
            guard let documents = snap?.documents else { return }
            self.posts = documents.compactMap({ try? $0.data(as: Post.self)})
        }
    }
    
}
