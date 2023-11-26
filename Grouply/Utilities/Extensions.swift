//
//  Extensions.swift
//  Grouply
//
//  Created by Bruke Wondessen on 11/24/23.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
