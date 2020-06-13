//
//  kameTableViewCell.swift
//  Tableview
//
//  Created by 伴大輔 on 2020/06/06.
//  Copyright © 2020 伴大輔. All rights reserved.
//

import UIKit

class kameTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var iconView: UIImageView!
    
    @IBOutlet weak var titleLavel: UILabel!
    
    
    @IBOutlet weak var discriptionLavel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
