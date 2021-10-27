//
//  SearchViewController.swift
//  TrendMedia
//
//  Created by Donggeun Lee on 2021/10/27.
//

import UIKit

class SearchViewController: UIViewController {
    
    let mediaInformation = MediaInformation()

    @IBOutlet weak var mediaSearchBar: UISearchBar!
    @IBOutlet weak var searchTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchTableView.delegate = self
        searchTableView.dataSource = self
        
    }
    
    func setConfigure() {
        self.title = "미디어 검색"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "multiply"), style: .plain, target: self, action: #selector(backButtonClicked))
        navigationItem.leftBarButtonItem?.tintColor = .systemGray
    }
    
    @objc func backButtonClicked() {
        self.navigationController?.popViewController(animated: true)
    }

}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchTableViewCell.identifier) as? SearchTableViewCell else {
            return UITableViewCell()
        }
        
        cell.cellSetUp()
        
        let media = mediaInformation.tvShow[indexPath.row]
        cell.posterImageView.image = UIImage(named: media.title)
        cell.mediaTitleLabel.text = media.title
        cell.releaseDateLabel.text = media.releaseDate
        cell.summaryTextView.text = media.overview
        cell.cellView.layer.shadowOpacity = 0.5
        cell.cellView.layer.shadowRadius = 8
        cell.cellView.layer.shadowOffset = CGSize(width: -3, height: -3)
        cell.cellView.layer.masksToBounds = false
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
}
