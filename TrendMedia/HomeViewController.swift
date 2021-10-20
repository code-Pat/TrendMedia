//
//  HomeViewController.swift
//  TrendMedia
//
//  Created by Donggeun Lee on 2021/10/20.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    let mediaInformation = MediaInformation()
    
    @IBOutlet weak var homeTableView: UITableView!
    
    @IBOutlet weak var homeViewSmall: UIView!
    @IBOutlet weak var homeMainLabel: UILabel!
    @IBOutlet weak var mainButton1: UIButton!
    @IBOutlet weak var mainButton2: UIButton!
    @IBOutlet weak var mainButton3: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeTableView.delegate = self
        homeTableView.dataSource = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell else {
            return UITableViewCell()
        }
        
        let row = mediaInformation.tvShow[indexPath.row]
        
        cell.gerneLabel.text = "#\(row.genre)"
        cell.titleENLabel.text = row.title
        cell.posterImageView.image = UIImage(named: row.title)
        cell.dateLabel.text = row.releaseDate
        cell.titleKRLabel.text = row.title
        
        
        return cell
    }
    
}
