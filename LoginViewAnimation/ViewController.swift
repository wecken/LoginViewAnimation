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
        
        let resetButton = UIButton()
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.setTitle("Re-animate", for: .normal)
        resetButton.addTarget(self, action: #selector(tapResetButton), for: .touchUpInside)
        resetButton.setTitleColor(.systemBlue, for: .normal)
        
        view.addSubview(resetButton)
        
        NSLayoutConstraint.activate([
            resetButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
            resetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    
        
        setupLoginView()
        setupStackView()
        prepareForAnimation()
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            appleButton.widthAnchor.constraint(equalToConstant: 300),
            appleButton.heightAnchor.constraint(equalToConstant: 40),
            googleButton.widthAnchor.constraint(equalToConstant: 300),
            googleButton.heightAnchor.constraint(equalToConstant: 40),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        startAnimate()
        
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
    
    func prepareForAnimation() {
        titleLabel.layer.opacity = 0
        imageView.layer.opacity = 0
        appleButton.layer.opacity = 0
        googleButton.layer.opacity = 0
        
        titleLabel.layer.setAffineTransform(CGAffineTransform.init(scaleX: 0.8, y: 0.8))
        imageView.layer.setAffineTransform(CGAffineTransform.init(scaleX: 0.8, y: 0.8))
        appleButton.layer.setAffineTransform(CGAffineTransform.init(translationX: 0, y: 30))
        googleButton.layer.setAffineTransform(CGAffineTransform .init(translationX: 0, y: 60))
        
    }
    
    func startAnimate() {
        UIView.animate(withDuration: 2.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 10, options: .curveEaseIn, animations: { [self] in
            
            self.titleLabel.layer.opacity = 1
            self.titleLabel.layer.setAffineTransform(CGAffineTransform.identity)
            self.imageView.layer.opacity = 1
            self.imageView.layer.setAffineTransform(CGAffineTransform.identity)
            
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.6, options: .curveEaseOut, animations: {
            
            self.appleButton.layer.opacity = 1
            self.appleButton.layer.setAffineTransform(CGAffineTransform.identity)
            self.googleButton.layer.opacity = 1
            self.googleButton.layer.setAffineTransform(CGAffineTransform.identity)
 
        }, completion: nil)
    }
    
    @objc func tapResetButton() {
        prepareForAnimation()
        startAnimate()
    }


}

