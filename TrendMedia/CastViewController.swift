//
//  CastViewController.swift
//  TrendMedia
//
//  Created by Donggeun Lee on 2021/10/20.
//

import UIKit

class CastViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let mediaInformation = MediaInformation()
    
    @IBOutlet weak var castTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        castTableView.delegate = self
        castTableView.dataSource = self
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CastTableViewCell.identifier, for: indexPath) as? CastTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    

}
