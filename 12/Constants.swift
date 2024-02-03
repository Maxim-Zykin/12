//
//  Constants.swift
//  12
//
//  Created by Максим Зыкин on 28.01.2024.
//

import UIKit

enum Constants {
    
    enum Colars {
        static var shadeOfBlue: UIColor? {
            UIColor(named: "ShadeOfBlue")
        }
        static var roseRed: UIColor? {
            UIColor(named: "RoseRed")
        }
        static var PurpleBlue: UIColor? {
            UIColor(named: "PurpleBlue")
        }
        static var grayLight: UIColor? {
            UIColor(named: "GrayLight")
        }
    }
    
    enum Fonts {
        static var ui16Semi: UIFont? {
//            UIFont(name: <#T##String#>, size: <#T##CGFloat#>)
            UIFont.systemFont(ofSize: 25, weight: .bold)
        }
        static var systemHeading: UIFont {
            UIFont.systemFont(ofSize: 30, weight: .bold)
        }
        static var systemtext: UIFont {
            UIFont.systemFont(ofSize: 18)
        }
    }
    
    enum Text {
        static let profile = Bundle.main.localizedString(forKey: "Профиль", value: "", table: "Localizable")
        static let name = Bundle.main.localizedString(forKey: "Name", value: "", table: "Localizable")
        static let age = Bundle.main.localizedString(forKey: "Age", value: "", table: "Localizable")
        static let description = Bundle.main.localizedString(forKey: "Description", value: "", table: "Localizable")
        static let speciality = Bundle.main.localizedString(forKey: "Speciality", value: "", table: "Localizable")
        static let goodLuck = Bundle.main.localizedString(forKey: "Good luck", value: "", table: "Localizable")
        
    }
    
    enum Image {
        static let star = UIImage(named: "star")
    }
}
