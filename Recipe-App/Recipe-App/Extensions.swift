//
//  Extensions.swift
//  Recipe-App
//
//  Created by Alikin Nikita Romanovich on 20.01.2023.
//
import UIKit

extension UIImageView {
    func roundedImage() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
}



