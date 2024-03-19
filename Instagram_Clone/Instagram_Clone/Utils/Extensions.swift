//
//  Extensions.swift
//  Instagram_Clone
//
//  Created by Umamaheshwari on 9/09/23.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
