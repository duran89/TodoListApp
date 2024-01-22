//
//  ToDoTableViewCell.swift
//  TodoListApp
//
//  Created by 권정근 on 1/23/24.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {
    
    let TitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 35, weight: .bold)
        label.textColor = .label
        label.shadowColor = UIColor.purple
        label.text = "청소하기"
        return label
    }()
    
    let DescriptionLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .regular)
        label.textColor = .label
        label.shadowColor = UIColor.systemYellow
        label.text = "방이랑 안바이랑 청소기 밀고 물걸레질 할 것"
        return label
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .systemMint
        
        self.contentView.addSubview(stackView)
        
        stackView.addArrangedSubview(TitleLabel)
        stackView.addArrangedSubview(DescriptionLabel)
        
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureConstraints() {
        
        let titleLabelConstraints = [
            TitleLabel.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let stackViewConstraints = [
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            // stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5)
        ]
        
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(stackViewConstraints)
    }
}
