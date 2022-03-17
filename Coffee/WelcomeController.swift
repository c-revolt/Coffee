//
//  ViewController.swift
//  Coffee
//
//  Created by Александр Прайд on 16.03.2022.
//

import UIKit

class WelcomeController: UIViewController {
    
    
    // properties
    let registerButton = UIButton(title: "Регистрация",
                                  titleColor: .titleButtonColor(),
                                  backgroundColor: .buttonCoffeeColor())
    
    let loginButton = UIButton(title: "Вход",
                               titleColor: .titleButtonColor(),
                               backgroundColor: .buttonCoffeeColor())
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupConstraints()
        settingsNavController()
        
    }
    
    private func setupConstraints() {
        
        let homeButtons = PairOfButtonsView(firstButton: registerButton,
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
    
    private func settingsNavController() {
        navigationItem.title = "Добро пожаловать!"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.labelTextColor()]
        navigationController?.navigationBar.barTintColor = .navControllerColor()
                
    }
    

}


// MARK: - SwiftUI

import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let welcomeVC = WelcomeController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> WelcomeController {
            return welcomeVC
        }
        
        func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
            
        }
    }
}

