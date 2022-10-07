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
    
    var auctionSite = ["Copart", "IAAI"]
    var copart: String = ""
    var iaai: String = ""

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
        showInSafari(url: "https://www.copart.com")
        showInSafari(url: "https://www.iaai.com")
        
        tableView.deselectRow(at: indexPath, animated: false)
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        let item = auctionSite[indexPath.row]
            
    }
    
}
