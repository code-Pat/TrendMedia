//
//  HomeViewController.swift
//  TrendMedia
//
//  Created by Donggeun Lee on 2021/10/20.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  

    @IBOutlet weak var homeViewSmall: UIView!
    @IBOutlet weak var homeMainLabel: UILabel!
    @IBOutlet weak var mainButton1: UIButton!
    @IBOutlet weak var mainButton2: UIButton!
    @IBOutlet weak var mainButton3: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell else {
            return UITableViewCell()
        }
        
        
        
        return cell
    }
    
}
