//
//  MyMediaViewController.swift
//  TrendMedia
//
//  Created by Donggeun Lee on 2021/10/26.
//

import UIKit

class MyMediaViewController: UIViewController {

    @IBOutlet weak var myMediaCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myMediaCollectionView.delegate = self
        myMediaCollectionView.dataSource = self
    }
    

    
}

extension MyMediaViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyMediaCell.identifier, for: indexPath) as? MyMediaCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
   
}
