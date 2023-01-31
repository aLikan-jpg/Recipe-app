//
//  CheckBoxButton.swift
//  Recipe-App
//
//  Created by Alikin Nikita Romanovich on 20.01.2023.
//

import UIKit

class CheckBox: UIButton {
    
    let checkedImage = UIImage(systemName: "checkmark.circle.fill")
    let uncheckedImage = UIImage(systemName: "checkmark.circle")
    
    public var isIngredientInCart = false
    var didTapCartButton: (() -> Bool)?
    
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImage, for: .normal)
            } else {
                self.setImage(uncheckedImage, for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchUpInside)
        self.isChecked = false
        self.layer.borderColor = UIColor(ciColor: .white).cgColor
    }
    
    @objc func buttonClicked(sender: UIButton) {
        isChecked = !isChecked
        isIngredientInCart = !isIngredientInCart
    }
}

