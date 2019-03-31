//
//  ViewController.swift
//  GroupedMessage
//
//  Created by Сергей Прокопьев on 29/03/2019.
//  Copyright © 2019 someThing. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    fileprivate let cellID = "id123"
    
    let textMasseges = [
    "Here my first message",
    "This is the secind massege and it's longer then first massege",
    "And this massege very huge and repeat again and again, And this massege very huge and repeat again and again, And this massege very huge and repeat again and again, And this massege very huge and repeat again and again"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Message"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(MessageCell.self, forCellReuseIdentifier: cellID)
        tableView.separatorStyle = .none
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textMasseges.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MessageCell
//        cell.textLabel?.text = "Ureal long text in thic cell, and i'm so sorry for my bad english languege"
//        cell.textLabel?.numberOfLines = 0
        cell.messageLabel.text = textMasseges[indexPath.row]
        return cell
    }
}

