//
//  ChatListViewController.swift
//  e-commerce
//
//  Created by ALY NABIL on 12/07/2024.
//

import UIKit

class ChatListViewController: UIViewController {
    
    //MARK: - OUTLET
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var massageTextField: UITextField!
    @IBOutlet weak var sendTextBtnTapped: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()

    }
    
    func registerCollectionView() {
        tableView.register(UINib(nibName: "ChatListTableViewCell", bundle: nil), forCellReuseIdentifier: "ChatListTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
}

//MARK: - EXTENSIONS
extension ChatListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatListTableViewCell", for: indexPath) as! ChatListTableViewCell
        
        if indexPath.row % 2 == 0 {
            cell.stackView.alignment = .leading
            cell.massageLabel.text = "I loved this dress so much as soon as I tried it on I knew I had to buy it in another color /n. I am 5'3 about 155lbs and I carry all my weight in my upper body /n. When I put it on I felt like it thinned me put and I got so many compliments."
        } else {
            cell.stackView.alignment = .trailing
            cell.massageLabel.text = "I’m super happy with these! I’ve never bought jeans online before and I didn’t think they’d even fit /n, but it turns out they fit pretty perfectly /n. I got a size 28- I’m 5’6” and weigh about 127 lbs. They are tight but not suffocating ..."
        }
        return cell
    }
    
    
}
