//
//  SearchViewController.swift
//  CarfaxInfoApp
//
//  Created by Rustem Manafov on 08.10.22.
//

import UIKit
import SafariServices

class SearchViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var auctionSite = ["Copart","IAAI"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        auctionSite.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = auctionSite[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            showInSafari(url: "https://www.copart.com")
        case 1:
            showInSafari(url: "https://www.iaai.com")
        default:
            break
        }
    }
    
}
