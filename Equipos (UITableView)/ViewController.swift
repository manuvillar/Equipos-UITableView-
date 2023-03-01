//
//  ViewController.swift
//  Equipos (UITableView)
//
//  Created by Manuel J Villar Cortijo on 7/3/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var equipos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        equipos = ["Atlético de Madrid", "Barcelona", "Deportivo de la Coruña", "Las Palmas", "Málaga", "Rayo Vallecano", "Sporting", "Real Sociedad", "Espanyol", "Mallorca", "Valladolid", "Éibar", "Ponferradina", "Albacete"]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return equipos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda:UITableViewCell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "micelda")
          celda.textLabel?.text  = equipos[indexPath.row]
          celda.imageView!.image = UIImage(named: equipos[indexPath.row])!
          return celda
    }
}

