//
//  PaymentsViewController.swift
//  CarfaxInfoApp
//
//  Created by Rustem Manafov on 08.10.22.
//

import UIKit

class PaymentsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var payments = ["carfax1", "carfax2", "carfax3" ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension PaymentsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        payments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaymentTableViewCell", for: indexPath) as! PaymentTableViewCell
        cell.textLabel?.text = payments[indexPath.row]
     return cell
        
    }
    
    
    
}
