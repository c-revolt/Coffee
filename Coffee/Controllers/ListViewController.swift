//
//  ListViewController.swift
//  Coffee
//
//  Created by Александр Прайд on 13.04.2022.
//

import UIKit

class ListViewController: UIViewController {
    
    let footerView = UIView()
    let onTheMapButton = UIButton(title: "На карте")
    let tableView = UITableView()

    
    let coffeShopsData = [CoffeeShopsModel(shopTitle: "BEDOEV COFFEE", distance: "1 км от вас"),
                           CoffeeShopsModel(shopTitle: "Coffee Like", distance: "2 км от вас"),
                           CoffeeShopsModel(shopTitle: "EM&DI Coffee and Snacks", distance: "1 км от вас"),
                           CoffeeShopsModel(shopTitle: "Коффе есть", distance: "300 м от вас"),
                           CoffeeShopsModel(shopTitle: "BEDOEV COFFEE 2", distance: "3 км от вас")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingsNavController()
        setupFooterView()
        setupButtonInFooterView()
        setupTableView()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
    }
    
    private func settingsNavController() {
        navigationItem.title = "Ближайшие Кофейни"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.labelTextColor()]
        navigationController?.navigationBar.barTintColor = .navControllerColor()

    }
    
    func setupFooterView() {
        view.addSubview(footerView)
        footerView.backgroundColor = .white
        
        footerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            footerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            footerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            footerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            footerView.heightAnchor.constraint(equalToConstant: 100)
        
        ])
        
    }
    
    func setupButtonInFooterView() {
        view.addSubview(onTheMapButton)
        footerView.addSubview(onTheMapButton)
        onTheMapButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            onTheMapButton.topAnchor.constraint(equalTo: footerView.topAnchor, constant: 20),
            onTheMapButton.leadingAnchor.constraint(equalTo: footerView.leadingAnchor, constant: 19),
            onTheMapButton.trailingAnchor.constraint(equalTo: footerView.trailingAnchor, constant:  -18),
            onTheMapButton.heightAnchor.constraint(equalToConstant: 47),
        
        ])
        
        
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.separatorColor = .clear
        tableView.register(CoffeeShopCell.self, forCellReuseIdentifier: K.coffeeShopsIDCell)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: footerView.topAnchor)
        
        ])
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffeShopsData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.coffeeShopsIDCell, for: indexPath) as! CoffeeShopCell
        
        cell.shopNameLabel.text = coffeShopsData[indexPath.row].shopTitle
        cell.distanceLabel.text = coffeShopsData[indexPath.row].distance
        
        
        return cell
    }
    
    
}
