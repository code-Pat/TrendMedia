//
//  MyMediaCell.swift
//  TrendMedia
//
//  Created by Donggeun Lee on 2021/10/26.
//

import UIKit

class MyMediaCell: UICollectionViewCell {
    
    static let identifier = "myMediaCell"
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!

}


//그냥 코드로만 구현해보려 했지만 constraints 잡는 부분에서 실패..!

/*
override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.backgroundColor = .white
}

required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}

private let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "media title"
    label.textColor = .white
    label.font = .systemFont(ofSize: 18, weight: .medium)
    return label
}()

private let posterImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "Maid")
    imageView.contentMode = .scaleAspectFill
    return imageView
}()

private let rateLabel: UILabel = {
    let label = UILabel()
    label.text = "0.0"
    label.textColor = .white
    label.font = .systemFont(ofSize: 12, weight: .medium)
    label.textAlignment = .center
    return label
}()

private func setUpViews() {
    contentView.addSubview(titleLabel)
    contentView.addSubview(rateLabel)
    contentView.addSubview(posterImageView)
    
    titleLabel.translatesAutoresizingMaskIntoConstraints
}
*/
