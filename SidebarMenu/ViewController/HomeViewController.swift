//
//  HiomeViewController.swift
//  SidebarMenu
//
//  Created by Николай Гринько on 23.07.2023.
//

import UIKit

protocol HomeViewControllerDelegate: AnyObject {
    func didTapMenuButton()
}

class HomeViewController: UIViewController {
    
    weak var delegate: HomeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Home"
        
        // add tap menu
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "list.bullet"),
            style: .done,
            target: self,
            action: #selector(didTapMenuButton))
    }
    
    @objc func didTapMenuButton() {
        delegate?.didTapMenuButton()
    }
    
}
