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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupConstraints()
        settingsNavController()
        settingsNavController()
        
    }
    
    private func settingsNavController() {
        navigationItem.title = "Добро пожаловать!"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.labelTextColor()]
        navigationController?.navigationBar.barTintColor = .navControllerColor()
                
    }

}

// MARK: - Setup Constaints
extension WelcomeController {
    private func setupConstraints() {
        
        let homeButtons = ButtonFormView(firstButton: registerButton,
                                          secondButton: loginButton)
        
        let stackView = UIStackView(arrangedSubviews: [homeButtons],
                                    axis: .vertical, spacing: 40)
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 690),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            
        ])
        
    }
    
}

