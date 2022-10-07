//
//  Safari+Ext.swift
//  CarfaxInfoApp
//
//  Created by Rustem Manafov on 08.10.22.
//

import Foundation
import UIKit
import SafariServices

extension UIViewController {
    func showInSafari(url: String) {
        if let url = URL(string: url) {
            let controller = SFSafariViewController(url: url)
            present(controller, animated: true, completion: nil)
        }
    }
}
