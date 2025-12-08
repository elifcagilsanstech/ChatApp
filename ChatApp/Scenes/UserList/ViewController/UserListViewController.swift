//
//  UserListViewController.swift
//  ChatApp
//
//  Created by Elif Çağıl on 7.12.2025.
//

import UIKit



protocol UserListViewControllerDelegate: AnyObject {
    func tappedUser(_ userId: String)
}

class UserListViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    weak var delegate : UserListViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ChatListCell", bundle: nil), forCellReuseIdentifier: "ChatCell")
        
    }
}

extension UserListViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath) as? ChatListCell else { return UITableViewCell()}
        cell.userNameLabel.text = "Hello Again"
        cell.countView.isHidden = true
        cell.timeLabel.isHidden = true
        cell.messageInfoLabel.isHidden = true
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        dismiss(animated: true, completion: { [ weak self ] in
            guard let self = self else {return}
            delegate?.tappedUser("5")
            
        })
    }
}
