//
//  ViewController.swift
//  TodoListApp
//
//  Created by 권정근 on 1/23/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemPink
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        view.addSubview(tableView)
        
        
        ConfigureConstraints()
    }
    
    private func ConfigureConstraints() {
        
        let tableViewConstraints = [
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ]
        
        NSLayoutConstraint.activate(tableViewConstraints)
    }
}

