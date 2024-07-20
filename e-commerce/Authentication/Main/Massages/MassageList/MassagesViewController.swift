//
//  MassagesViewController.swift
//  e-commerce
//
//  Created by ALY NABIL on 09/07/2024.
//

import UIKit

class MassagesViewController: UIViewController {

    //MARK: - OUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableView()
        navigationController?.navigationBar.topItem?.title = "Massages"
    }
    //MARK: - METHODS
    func registerTableView() {
        tableView.register(UINib(nibName: "MassagesTableViewCell", bundle: nil), forCellReuseIdentifier: "MassagesTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
}


//MARK: - EXTENSIONS
extension MassagesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ChatListViewController")
        navigationController?.pushViewController(viewController, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MassagesTableViewCell", for: indexPath) as! MassagesTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
