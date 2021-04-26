//
//  HomeTableViewCell.swift
//  AdvancedViewControllerLab
//
//  Created by Kevin Tran on 3/27/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var foodCategoriesImage: UIImageView!
    @IBOutlet weak var foodCategoriesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
