//
//  SearchTableViewCell.swift
//  TrendMedia
//
//  Created by Donggeun Lee on 2021/10/27.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    static let identifier = "searchCell"
    
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var mediaTitleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var summaryTextView: UITextView!
    
    /*
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
     */
    
    func cellSetUp() {
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: -2, height: -2)
        self.layer.shadowRadius = 3
    }
}
