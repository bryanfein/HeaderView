//
//  HeaderView.swift
//  CustomHeaders
//
//  Created by Bryan Fein on 4/12/17.
//  Copyright © 2017 Bryan Fein. All rights reserved.
//

import UIKit

class HeaderView: UITableViewCell {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
