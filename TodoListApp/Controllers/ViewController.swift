//
//  ViewController.swift
//  TodoListApp
//
//  Created by 권정근 on 1/23/24.
//

import UIKit

class ViewController: UIViewController {
    
    var toDoListArray: [ToDo] = []
    
    var toDoDataManager = ToDoDataManager()
    
    private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemRed
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        view.addSubview(tableView)
        tableView.rowHeight = 100
        
        toDoDataManager.makeToDoDataArray()
        toDoListArray = toDoDataManager.getToDoDataArray()
        
        tableView.dataSource = self
        tableView.register(ToDoTableViewCell.self, forCellReuseIdentifier: "cell")
        
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


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoListArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ToDoTableViewCell
        
        cell.TitleLabel.text = toDoListArray[indexPath.row].Title
        cell.DescriptionLabel.text = toDoListArray[indexPath.row].Description
        
        
        return cell
    }
    
    
}
