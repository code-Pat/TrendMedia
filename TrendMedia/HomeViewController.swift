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
    @IBOutlet weak var buttonView: UIView!
    
    @IBOutlet weak var homeViewSmall: UIView!
    @IBOutlet weak var homeMainLabel: UILabel!
    @IBOutlet weak var mainButton1: UIButton!
    @IBOutlet weak var mainButton2: UIButton!
    @IBOutlet weak var mainButton3: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        setUpViews()
        
//
//        let cell = homeTableViewCell
//        let tappedGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedView(_:)))
//        cell!.cellView.addGestureRecognizer(tappedGesture)
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
        
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
        cell.cellView.layer.shadowOpacity = 0.5
        cell.cellView.layer.shadowRadius = 8
        cell.cellView.layer.shadowOffset = CGSize(width: -5, height: -5)
        cell.cellView.layer.masksToBounds = false
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "CastViewController") as! CastViewController
        navigationController?.pushViewController(vc, animated: true)
        
//        let nav = UINavigationController(rootViewController: vc)
//        navigationController?.pushViewController(nav, animated: true)
    }
    
    /*
    @objc func tappedView(_ gesture: UITapGestureRecognizer) {
        let storyboard: UIStoryboard = UIStoryboard(name: "castViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "castViewController")
        present(vc, animated: true)
    }
    */
    
}

extension HomeViewController {
    private func setUpViews() {
        
        self.homeViewSmall.backgroundColor = .orange
        
        self.homeMainLabel.text = "Pat's Media"
        self.homeMainLabel.textColor = .white
        self.homeMainLabel.font = .boldSystemFont(ofSize: 30)
        self.homeMainLabel.textAlignment = .center
        
        self.buttonView.layer.shadowOpacity = 0.5
        self.buttonView.layer.shadowOffset = CGSize(width: -8, height: 0)
        self.buttonView.layer.shadowRadius = 8
        self.buttonView.layer.masksToBounds = false
        
        self.mainButton1.setImage(UIImage(systemName: "film"), for: .normal)
        self.mainButton1.setTitle("", for: .normal)
        self.mainButton1.contentMode = .scaleAspectFill
    
        self.mainButton2.setImage(UIImage(systemName: "tv"), for: .normal)
        self.mainButton2.setTitle("", for: .normal)
        
        self.mainButton3.setImage(UIImage(systemName: "book"), for: .normal)
        self.mainButton3.setTitle("", for: .normal)

    }
}
