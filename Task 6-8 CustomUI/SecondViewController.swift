//
//  SecondViewController.swift
//  Task 6-8 CustomUI
//
//  Created by Maxim Dmytruk on 13.01.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var topViewForXib: MenuBlockController!
    @IBOutlet weak var leadingViewForXib: MenuBlockController!
    @IBOutlet weak var trailingViewForXib: MenuBlockController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topViewForXib.delegate = self
        leadingViewForXib.delegate = self
        trailingViewForXib.delegate = self
        
        topViewForXib.configure(with: "Відкрити депозит", image: UIImage(imageLiteralResourceName: "dep"))
        leadingViewForXib.configure(with: "Відкрити банку", image: UIImage(imageLiteralResourceName: "jar"))
        trailingViewForXib.configure(with: "Передати на благо", image: UIImage(imageLiteralResourceName: "help"))
    }
    


}
