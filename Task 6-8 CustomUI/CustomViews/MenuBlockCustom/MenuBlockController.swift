//
//  MenuBlockController.swift
//  Task 6-8 CustomUI
//
//  Created by Maxim Dmytruk on 14.01.2023.
//

import UIKit


class MenuBlockController: UIView {
    
    @IBOutlet var generalView: UIView!
    @IBOutlet weak var butonCustom: UIButton!
    @IBOutlet weak var imageCustom: UIImageView!
    
    var delegate:MenuBlockDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("MenuBlockXib", owner: self, options: nil)
        generalView.fixInView(self)
    }
    
    func configure(with text: String, image: UIImage){
        butonCustom.setTitle(text, for: .normal)
        imageCustom.image = image
        generalView.layer.cornerRadius = 10
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        delegate?.menuElementPressed()
        print("Menu Item Pressed!")
        
        switch sender.titleLabel?.text {
        case "Розстрочка на карту":
            print("pressed 'topCustomView' in First VC")
        case "Архів":
            print("pressed 'trailingCustomView' in First VC")
        case "Покупка частинами":
            print("pressed 'leadingCustomView' in First VC")
        case "Відкрити депозит":
            print("pressed 'topViewForXib' in Second VC")
        case "Відкрити банку":
            print("pressed 'leadingViewForXib' in Second VC")
        case "Передати на благо":
            print("pressed 'trailingViewForXib' in Second VC")
        default:
            print("some other ")
        }
        
    }
    
}




