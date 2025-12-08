//
//  ChatListViewController.swift
//  ChatApp
//
//  Created by Elif Çağıl on 4.12.2025.
//

import UIKit

class ChatListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
        navbarSetup()
    }
    func tableViewSetup(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ChatListCell", bundle: nil),forCellReuseIdentifier: "ChatCell")
        
    }
    
    func navbarSetup(){
        self.title = "Chat List"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.rightBarButtonItem = UIBarButtonItem(
                barButtonSystemItem: .add,
                target: self,
                action: #selector(tappedButton)
            )
    }
    @objc func tappedButton(){
        let storyboard = UIStoryboard(name: "UserList", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "UserList")
        let nav = UINavigationController(rootViewController: vc)

        if let sheet = nav.sheetPresentationController {
            sheet.detents = [.large()]
            sheet.prefersGrabberVisible = true
        }

        present(nav, animated: true)
        
    }
}
extension ChatListViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath) as? ChatListCell
        else {
            return UITableViewCell()
        }
        cell.setupCell()
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let storyboard = UIStoryboard(name: "ChatDetail", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ChatDetail") as! ChatDetailViewController
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: false
        )
    }
}
