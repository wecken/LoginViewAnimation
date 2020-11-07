//
//  ViewController.swift
//  LoginViewAnimation
//
//  Created by Hiroyuki Miura on 2020/11/07.
//

import UIKit

class ViewController: UIViewController {

    let appleButton = UIButton()
    let googleButton = UIButton()
    let stackView = UIStackView()
    let titleLabel = UILabel()
    let imageView = UIImageView(image: UIImage(named: "topImage"))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        setupLoginView()
        setupStackView()
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            appleButton.widthAnchor.constraint(equalToConstant: 300),
            appleButton.heightAnchor.constraint(equalToConstant: 40),
            googleButton.widthAnchor.constraint(equalToConstant: 300),
            googleButton.heightAnchor.constraint(equalToConstant: 40),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func setupLoginView() {
        
        //Title Label
        titleLabel.text = "Welcome"
        titleLabel.font = .boldSystemFont(ofSize: 26)
        titleLabel.numberOfLines = 1
        titleLabel.textAlignment = .center
        
        //Buttons
        appleButton.translatesAutoresizingMaskIntoConstraints = false
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        
        appleButton.setTitle("Login with Apple", for: .normal)
        appleButton.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        appleButton.layer.cornerRadius = appleButton.intrinsicContentSize.height / 2
        appleButton.layer.cornerCurve = .continuous
        
        googleButton.setTitle("Login with Google", for: .normal)
        googleButton.backgroundColor = UIColor.init(red: 0.129, green: 0.477, blue: 1, alpha: 1)
        googleButton.layer.cornerRadius = googleButton.intrinsicContentSize.height / 2
        googleButton.layer.cornerCurve = .continuous


    }
    
    func setupStackView() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.alignment = .center
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(appleButton)
        stackView.addArrangedSubview(googleButton)
    }


}

