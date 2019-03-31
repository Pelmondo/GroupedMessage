//
//  ViewController.swift
//  GroupedMessage
//
//  Created by Сергей Прокопьев on 29/03/2019.
//  Copyright © 2019 someThing. All rights reserved.
//

import UIKit

struct ChatMessage {
    let text: String
    let isIncoming: Bool
}

class ViewController: UITableViewController {

    fileprivate let cellID = "id123"
    
    let chatMassages = [
        ChatMessage(text: "his is the secind massege and it's longer then first massege", isIncoming: true),
        ChatMessage(text: "Yo, dog, Whatsup?", isIncoming: false),
        ChatMessage(text: "Here my first message", isIncoming: false),
        ChatMessage(text: "And this massege very huge and repeat again and again, And this massege very huge and repeat again and again, And this massege very huge and repeat again and again, And this massege very huge and repeat again and again", isIncoming: true)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Message"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(MessageCell.self, forCellReuseIdentifier: cellID)
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(white: 0.95, alpha: 1)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatMassages.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MessageCell
        let chatMessage = chatMassages[indexPath.row]
        
        
//        cell.messageLabel.text = chatMessage.text
//        cell.isIncoming = chatMessage.isIncoming
        cell.chatMessage = chatMessage
        
//        cell.isIncoming = indexPath.row.isMultiple(of: 2) // check of odd/even
        
        return cell
    }
}

