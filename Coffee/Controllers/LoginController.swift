//
//  LoginController.swift
//  Coffee
//
//  Created by Александр Прайд on 18.03.2022.
//

import UIKit

class LoginController: UIViewController {
    
    // properties
    
    let emailLabel = UILabel(text: "e-mail")
    let passwordLabel = UILabel(text: "Пароль")
    
    let emailTextField = UITextField(placeholder: "example@example.ru", isSecureTextEntry: false)
    let passwordTextField = UITextField(placeholder: "******", isSecureTextEntry: true)
    
    let loginButton = UIButton(title: "Вход")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        emailTextField.indent(size: 18.5)
        passwordTextField.indent(size: 18.5)
        
        settingsNavController()
        setupConstraints()
        
        loginButton.addTarget(self, action: #selector(goToCoffeeShops), for: .touchUpInside)
        
        
    }
    
    private func settingsNavController() {
        navigationItem.title = "Вход"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.labelTextColor()]
        navigationController?.navigationBar.barTintColor = .navControllerColor()
                
    }
    
}

// MARK: - Setup Constraints
extension LoginController {
    private func setupConstraints() {
        
        let emailForm = LabelAndTextFieldFormView(label: emailLabel, textField: emailTextField)
        let passwordForm = LabelAndTextFieldFormView(label: passwordLabel, textField: passwordTextField)
        
        loginButton.heightAnchor.constraint(equalToConstant: 47).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [emailForm, passwordForm],
                                    axis: .vertical,
                                    spacing: 24.49)
        
        let buttonStackView = UIStackView(arrangedSubviews: [loginButton], axis: .vertical, spacing: 0)
        
        view.addSubview(stackView)
        view.addSubview(buttonStackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 278.49),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            
        ])
        
        NSLayoutConstraint.activate([
            buttonStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30.51),
            buttonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            buttonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18)
        
        ])
        
    }
    
    // MARK: - Handlers
    
    @objc fileprivate func goToCoffeeShops() {
        let coffeeShopsViewController = CoffeeShopsViewController()
        navigationController?.pushViewController(coffeeShopsViewController, animated: true)
        
        let backItem = UIBarButtonItem()
        backItem.title =  ""
        navigationItem.backBarButtonItem = backItem
        navigationItem.backBarButtonItem?.tintColor = .labelTextColor()
    }


}



