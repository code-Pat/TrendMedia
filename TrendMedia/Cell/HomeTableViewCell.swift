//
//  HomeTableViewCell.swift
//  TrendMedia
//
//  Created by Donggeun Lee on 2021/10/20.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    static let identifier = "homeTableViewCell"

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var gerneLabel: UILabel!
    @IBOutlet weak var titleENLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleKRLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var similarButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
