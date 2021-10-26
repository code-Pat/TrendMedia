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
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        castTableView.delegate = self
        castTableView.dataSource = self
        
        setUpViews()

    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CastTableViewCell.identifier, for: indexPath) as? CastTableViewCell else {
            return UITableViewCell()
        }
        cell.roleNameLabel?.text = "Here goes the role name"
        cell.castNameLabel?.text = "Here goes the actor name"
        cell.castImageView?.image = UIImage(named: "Maid")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    

}


extension CastViewController {
    private func setUpViews() {
        self.posterImageView.backgroundColor = .systemGray
        self.posterImageView.image = UIImage(named: "Maid")
        
        self.titleLabel.text = "here goes the media title"
        self.titleLabel.textColor = .white
        self.titleLabel.font = .systemFont(ofSize: 16)
        self.titleLabel.textAlignment = .center
        
        
    }
}
