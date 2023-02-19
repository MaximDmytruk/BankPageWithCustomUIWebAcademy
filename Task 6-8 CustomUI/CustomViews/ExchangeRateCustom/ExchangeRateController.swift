//
//  ExchangeRateController.swift
//  Task 6-8 CustomUI
//
//  Created by Maxim Dmytruk on 14.01.2023.
//

import UIKit

class ExchangeRateController: UIView {

    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            commonInit()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            commonInit()
        }
    
    func commonInit() {
          Bundle.main.loadNibNamed("ExchangeRateXib", owner: self, options: nil)
        contentView.fixInView(self)
      }
    
}



