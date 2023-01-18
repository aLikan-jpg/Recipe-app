//
//  IngredientsTableViewCell.swift
//  Recipes-App
//
//  Created by Alikin Nikita Romanovich on 19.12.2022.
//

import UIKit

class IngredientsTableViewCell: UITableViewCell {
    

    @IBOutlet weak var ingredientLogo: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
