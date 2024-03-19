//
//  ProfileView.swift
//  Instagram_Clone
//
//  Created by Umamaheshwari on 10/1/23.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                
                ProfileHeaderView(viewModel: ProfileViewModel(user: user))
                
                if let currentProfileID = user.id {
                    
                    PostGridView(config: .profile(currentProfileID))                        
                }
            }
            .padding(.top)
        }
    }
}
