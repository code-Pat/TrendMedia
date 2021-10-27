//
//  MyMediaViewController.swift
//  TrendMedia
//
//  Created by Donggeun Lee on 2021/10/26.
//

import UIKit

class MyMediaViewController: UIViewController {
    
    let mediaInformation = MediaInformation()

    @IBOutlet weak var myMediaCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myMediaCollectionView.delegate = self
        myMediaCollectionView.dataSource = self
        
        setUpView()
    }
    
    
    func setUpView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top:10, left: 10, bottom: 10, right: 10)
        layout.estimatedItemSize = CGSize(width: (UIScreen.main.bounds.width - 40) / 2, height: (UIScreen.main.bounds.width - 40) / 2)
        myMediaCollectionView.collectionViewLayout = layout
    }
}

extension MyMediaViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyMediaCell.identifier, for: indexPath) as? MyMediaCell else {
            return UICollectionViewCell()
        }
        
        let media = mediaInformation.tvShow[indexPath.row]
        
        cell.posterImageView.image = UIImage(named: media.title)
        cell.titleLabel.text = media.title
        cell.ratingLabel.text = String(media.rate)
        
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
   
}
