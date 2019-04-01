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
    let date: Date
}

extension Date {
    static func dateFromCustomString(customString: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.date(from: customString) ?? Date()
        
    }
}

class ViewController: UITableViewController {

    fileprivate let cellID = "id123"
    
//    let chatMassages = [
//        ChatMessage(text: "his is the secind massege and it's longer then first massege", isIncoming: true),
//        ChatMessage(text: "Yo, dog, Whatsup?", isIncoming: false),
//        ChatMessage(text: "Here my first message", isIncoming: false),
//        ChatMessage(text: "And this massege very huge and repeat again and again, And this massege very huge and repeat again and again, And this massege very huge and repeat again and again, And this massege very huge and repeat again and again", isIncoming: true)
//    ]
    
    let chatMessages = [
        [
           ChatMessage(text: "his is the secind massege and it's longer then first massege", isIncoming: true, date: Date.dateFromCustomString(customString: "10/03/2019")),
           ChatMessage(text: "Yo, dog, Whatsup?", isIncoming: false, date: Date.dateFromCustomString(customString: ""))
        ],
        [
           ChatMessage(text: "And this massege very huge and repeat again and again, And this massege very huge and repeat again and again, And this massege very huge and repeat again and again, And this massege very huge and repeat again and again", isIncoming: true, date: Date.dateFromCustomString(customString: "")),
           ChatMessage(text: "Here my first message", isIncoming: false, date: Date.dateFromCustomString(customString: ""))
        ],
        [
            ChatMessage(text: "Third sections", isIncoming: true, date: Date.dateFromCustomString(customString: ""))
        ]
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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return chatMessages.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if let firstMessageInSection = chatMessages[section].first {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yyyy"
            let dateString = dateFormatter.string(from: firstMessageInSection.date)
            return dateString
        }
        
        return "Section: \(Date())"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatMessages[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MessageCell
        let chatMessage = chatMessages[indexPath.section][indexPath.row]
        
        
//        cell.messageLabel.text = chatMessage.text
//        cell.isIncoming = chatMessage.isIncoming
        cell.chatMessage = chatMessage
        
//        cell.isIncoming = indexPath.row.isMultiple(of: 2) // check of odd/even
        
        return cell
    }
}

