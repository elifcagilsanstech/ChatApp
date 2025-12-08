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
