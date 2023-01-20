//
//  IngredientsCell.swift
//  Recipe-App
//
//  Created by Alikin Nikita Romanovich on 19.01.2023.
//

import UIKit

class IngredientsCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var logo: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
