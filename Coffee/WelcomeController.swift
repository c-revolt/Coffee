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
                                  font: .sfProDisplay18(),
                                  backgroundColor: .buttonCoffeeColor())
    
    let loginButton = UIButton(title: "Вход",
                               titleColor: .titleButtonColor(),
                               font: .sfProDisplay18(),
                               backgroundColor: .buttonCoffeeColor())
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
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

