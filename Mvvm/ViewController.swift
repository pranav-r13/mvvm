//
//  ViewController.swift
//  Mvvm
//
//  Created by Pranav on 24/02/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var tableview: UITableView!
    
    var data = [
        characters(id: 1, firstName: "Rick", lastName: "Sanchez", Status: "Alive", species: "Human"),
        characters(id: 2, firstName: "Morty", lastName: "Smith", Status: "Alive", species: "Human"),
        characters(id: 3, firstName: "Sumer", lastName: "Smith", Status: "Alive", species: "Human"),
        characters(id: 4, firstName: "Abradolf", lastName: "Lincler", Status: "Alive", species: "Genetic Experiment"),
        characters(id: 5, firstName: "Bird", lastName: "Person", Status: "Alive", species: "Bird-Person"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.register( defaultTableViewCell.nib(), forCellReuseIdentifier: defaultTableViewCell.cellid)
        
        tableview.delegate = self
        tableview.dataSource = self
    }
     
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: defaultTableViewCell.cellid, for: indexPath) as! defaultTableViewCell
        
        let model = data[indexPath.row]
        
        cell.configure(with: CellViewModel(firstName: model.firstName, lastName: model.lastName, species: model.species))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true )
    }
    
}

