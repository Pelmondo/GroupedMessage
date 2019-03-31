//
//  MessageCell.swift
//  GroupedMessage
//
//  Created by Сергей Прокопьев on 31/03/2019.
//  Copyright © 2019 someThing. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    let messageLabel = UILabel()
    let bubbleBackgroundView = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        bubbleBackgroundView.backgroundColor = .yellow
        bubbleBackgroundView.layer.cornerRadius = 8
        bubbleBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bubbleBackgroundView)
        
        
        addSubview(messageLabel)
//        messageLabel.backgroundColor = .green
        messageLabel.text = "Ureal long text in thic cell, and i'm so sorry for my bad english languege"
        messageLabel.numberOfLines = 0
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
//        let set up some constraints for our label
        let constraints = [messageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32),
        messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
        messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
        messageLabel.widthAnchor.constraint(equalToConstant: 250),
        
        bubbleBackgroundView.topAnchor.constraint(equalTo: messageLabel.topAnchor, constant: -16),
        bubbleBackgroundView.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor, constant: -16),
        bubbleBackgroundView.bottomAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 16),
        bubbleBackgroundView.trailingAnchor.constraint(equalTo: messageLabel.trailingAnchor, constant: 16)
        ]
        
        
        
        
        NSLayoutConstraint.activate(constraints)
//        messageLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
