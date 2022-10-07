//
//  Image+Ext.swift
//  CarfaxInfoApp
//
//  Created by Rustem Manafov on 08.10.22.
//

import Foundation
import UIKit
import SDWebImage

extension UIImageView {
    func loadURL(url: String) {
        if let url = URL(string: url) {
            sd_setImage(with: url,
                        placeholderImage: UIImage(named: "placeholder"))
        }
    }
}
