//
//  TableViewController.swift
//  Coffee
//
//  Created by Александр Прайд on 27.03.2022.
//

import UIKit

class CoffeeShopsViewController: UITableViewController {
    
    
    let futterView = UIView()


    let coffeShopsData = [CoffeeShopsModel(shopTitle: "BEDOEV COFFEE", distance: "1 км от вас"),
                           CoffeeShopsModel(shopTitle: "Coffee Like", distance: "2 км от вас"),
                           CoffeeShopsModel(shopTitle: "EM&DI Coffee and Snacks", distance: "1 км от вас"),
                           CoffeeShopsModel(shopTitle: "Коффе есть", distance: "300 м от вас"),
                           CoffeeShopsModel(shopTitle: "BEDOEV COFFEE 2", distance: "3 км от вас")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .white
        tableView.separatorColor = .clear
        tableView.register(CoffeeShopCell.self, forCellReuseIdentifier: K.coffeeShopsIDCell)
        
        tableView.addSubview(futterView)
        
        
        settingsNavController()
        setupView()
        
    }
    
    private func settingsNavController() {
        navigationItem.title = "Ближайшие Кофейни"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.labelTextColor()]
        navigationController?.navigationBar.barTintColor = .navControllerColor()
                
    }


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return coffeShopsData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.coffeeShopsIDCell, for: indexPath) as! CoffeeShopCell
        
        cell.shopNameLabel.text = coffeShopsData[indexPath.row].shopTitle
        cell.distanceLabel.text = coffeShopsData[indexPath.row].distance

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }



    func setupView() {
        
        futterView.ancor(top: nil,
                         leading: tableView.leadingAnchor,
                         bottom: tableView.bottomAnchor,
                         trailling: tableView.trailingAnchor)
        
        futterView.backgroundColor = .red
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
