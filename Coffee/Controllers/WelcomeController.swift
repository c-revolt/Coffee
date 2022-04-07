//
//  ViewController.swift
//  Coffee
//
//  Created by Александр Прайд on 16.03.2022.
//

import UIKit

class WelcomeController: UIViewController {
    
    
    // properties
    let registerButton = UIButton(title: "Регистрация")
    let loginButton = UIButton(title: "Вход")
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupConstraints()
        
        registerButton.addTarget(self, action: #selector(goToRegister), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(goToLogin), for: .touchUpInside)
        
    }
        

}

// MARK: - Setup Constaints
extension WelcomeController {
    private func setupConstraints() {
        
        let homeButtons = ButtonFormView(firstButton: registerButton,
                                          secondButton: loginButton)
        
        let stackView = UIStackView(arrangedSubviews: [homeButtons],
                                    axis: .vertical, spacing: 0)
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 690),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            
        ])
        
    }
    
    // MARK: - Handlers
    
    @objc fileprivate func goToRegister() {
        let registrationController = RegistrationController()
        navigationController?.pushViewController(registrationController, animated: true)
        
        let backItem = UIBarButtonItem()
        backItem.title =  ""
        navigationItem.backBarButtonItem = backItem
        navigationItem.backBarButtonItem?.tintColor = .labelTextColor()
        
    }
    
    @objc fileprivate func goToLogin() {
        let loginController = LoginController()
        navigationController?.pushViewController(loginController, animated: true)
    }
    
}


