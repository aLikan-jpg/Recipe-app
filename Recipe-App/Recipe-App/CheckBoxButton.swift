//
//  CheckBoxButton.swift
//  Recipe-App
//
//  Created by Alikin Nikita Romanovich on 20.01.2023.
//

import UIKit

final class CheckBoxButton: UIView {
    var isChecked = false
    let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.isHidden = false
        imageView.contentMode = .scaleToFill
        imageView.tintColor = .black
        imageView.image = UIImage(systemName: "checkmark")
        
    return imageView
    }()
    let boxView : UIView = {
      let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.label.cgColor
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        addSubview(boxView)
        addSubview(imageView)
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        boxView.frame = CGRect(x: 5, y: 5, width: frame.size.width - 10, height: frame.size.width - 10)
        imageView.frame = bounds
    }
    public func toggle() {
        self.isChecked = !isChecked
        
        imageView.isHidden = !isChecked
    }
}
