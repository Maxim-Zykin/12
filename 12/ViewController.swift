//
//  ViewController.swift
//  12
//
//  Created by Максим Зыкин on 28.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var lableName: UILabel = {
        let lable = UILabel()
        lable.text = Constants.Text.name
        lable.textColor = Constants.Colars.PurpleBlue
        lable.font = Constants.Fonts.systemHeading
        return lable
    }()

    private lazy var lableInfo: UILabel = {
        let lable = UILabel()
        lable.text = Constants.Text.speciality
        lable.textColor = Constants.Colars.roseRed
        lable.font = Constants.Fonts.systemtext
        return lable
    }()
    
    private lazy var lableAge: UILabel = {
        let lable = UILabel()
        lable.text = Constants.Text.age
        lable.textColor = Constants.Colars.shadeOfBlue
        lable.font = Constants.Fonts.systemtext
        return lable
    }()
    
    private lazy var lableDescription: UILabel = {
        let lable = UILabel()
        lable.text = Constants.Text.description
        lable.textAlignment = .center
        lable.textColor = Constants.Colars.grayLight
        lable.font = Constants.Fonts.systemtext
        lable.numberOfLines = 0
        return lable
    }()
    
    private lazy var lableMutable: UILabel = {
        let lable = UILabel()
        let string = "\(Constants.Text.goodLuck), \(lableName.text!)!"
        let atributedString: NSMutableAttributedString = NSMutableAttributedString(string: string)
        
        if let commaIndex = string.firstIndex(of: ",") {
            atributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemRed,
                range: NSRange(string.startIndex ..< commaIndex, in: string)
            )
            atributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemBlue,
                range: NSRange(commaIndex ..< string.endIndex, in: string)
            )
        }
        
        lable.attributedText = atributedString
        return lable
    }()
    
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.image = Constants.Image.star
        image.tintColor = Constants.Colars.roseRed
        return image
    }()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 14
        stack.addArrangedSubview(imageView)
        stack.addArrangedSubview(lableName)
        stack.addArrangedSubview(lableInfo)
        stack.addArrangedSubview(lableAge)
        stack.addArrangedSubview(lableDescription)
        stack.addArrangedSubview(lableMutable)
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupUI()
    }
    
    private func setupNavigationBar() {
        title = Constants.Text.profile
        navigationController?.navigationBar.prefersLargeTitles = true
        let navBarApperanse = UINavigationBarAppearance()
        navBarApperanse.configureWithOpaqueBackground()
        navBarApperanse.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarApperanse.backgroundColor = Constants.Colars.PurpleBlue
        navigationController?.navigationBar.scrollEdgeAppearance = navBarApperanse
    }

    private func setupUI() {
        view.backgroundColor = UIColor.white
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 350)
        ])
    }

}

