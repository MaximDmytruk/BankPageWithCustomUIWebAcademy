//
//  FirstViewController.swift
//  Task 6-8 CustomUI
//
//  Created by Maxim Dmytruk on 13.01.2023.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var topCustomView: MenuBlockController!
    @IBOutlet weak var leadingCustomView: MenuBlockController!
    @IBOutlet weak var trailingCustomView: MenuBlockController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topCustomView.configure(with: "Розстрочка на карту", image: UIImage(imageLiteralResourceName: "cash"))
        leadingCustomView.configure(with: "Покупка частинами", image:UIImage(imageLiteralResourceName: "paw"))
        trailingCustomView.configure(with: "Архів", image: UIImage(imageLiteralResourceName: "book"))

        topCustomView.delegate = self
        leadingCustomView.delegate = self
        trailingCustomView.delegate = self
    }

}
