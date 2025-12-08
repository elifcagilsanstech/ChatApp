//
//  ChatDetailViewController.swift
//  ChatApp
//
//  Created by Elif Çağıl on 4.12.2025.
//

import UIKit

class ChatDetailViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var plusView: UIView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavbar()
        setUpTableView()
        
    }
    
    func setUpTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MessageTableCell", bundle: nil),forCellReuseIdentifier: "MessageCell")
        
    }
    
    func setNavbar(){
        navigationItem.title = "Chat"
        navigationItem.largeTitleDisplayMode = .never
        let backButton = UIBarButtonItem(
            image: UIImage(systemName: "chevron.backward"),
            style: .plain,
            target: self,
            action: #selector(handleback)
        )
        
        navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func handleback(){
        navigationController?.popViewController(animated: true)
        dismiss(animated: true)
    }
    
    @IBAction func sendMessageButton(_ sender: Any) {
        print("Message sent")
    }
    
}
extension ChatDetailViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath) as? MessageTableCell else { return UITableViewCell() }
        
        cell.labelText("Selam nabersinsdfghjklşçölmkjnvkodrkjghvfkplkdoıjfosplckofıkkpsşfojkodıjfvkoıdjrgıottrıugkoldrkgjd", isMine: true)
        return cell
    }
    
}
