//
//  LazyView.swift
//  Instagram_Clone
//
//  Created by Umamaheshwari on 9/14/23.
//

import SwiftUI

struct LazyView<Content:View>: View {
    
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body : Content { build() }
}
