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
        self.addTarget(self, action: Selector(("buttonClicked")), for: UIControl.Event.touchUpInside)
        self.isChecked = false
        self.layer.borderColor = UIColor(ciColor: .white).cgColor
    }
    
    func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
            isIngredientInCart = !isIngredientInCart
        }
    }
    
    public var didTapCartButton: (() -> Bool)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



//    public var isBookInChart = false {
//        didSet {
//            addToCartButton.setTitle(isBookInChart ? "Remove" : "Add", for: .normal)
//        }
//    }
//    lazy var addToCartButton : UIButton = {
//        let button = UIButton(type: .system)
//
//        button.setTitle("Add", for: .normal)
//
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.addAction(UIAction { _ in
//            if let inChart = self.didTapCartButton?() {
//                self.isBookInChart = inChart
//            }
//        }, for: .touchUpInside)
//        return button
//    }()
//    public var didTapCartButton: (() -> Bool)?
//
//    required init?(coder: NSCoder) {
//      fatalError("init(coder:) has not been implemented")
//    }
//}

