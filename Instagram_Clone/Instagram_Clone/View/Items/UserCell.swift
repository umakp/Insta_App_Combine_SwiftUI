//
//  UserCell.swift
//  Instagram_Clone
//
//  Created by Umamaheshwari on 9/09/23.
//

import SwiftUI
import Kingfisher

struct UserCell: View {
    
    let user: User
    
    var body: some View {
        HStack {
            
            if let imageURL = user.profileImageURL {
                KFImage(URL(string: imageURL))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipped()
                    .clipShape(Circle())
            }
            else {
                Image("profile-placeholder")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipped()
                    .clipShape(Circle())
            }
            
            VStack {
                Text(user.username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(user.fullname)
                    .font(.system(size: 14))
            }
                
            Spacer()
        }
    }
}


