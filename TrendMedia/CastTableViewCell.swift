//
//  CastTableViewCell.swift
//  TrendMedia
//
//  Created by Donggeun Lee on 2021/10/21.
//

import UIKit

class CastTableViewCell: UITableViewCell {

    static let identifier = "castTableViewCell"
    
    @IBOutlet weak var roleNameLabel: UILabel!
    @IBOutlet weak var castNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
