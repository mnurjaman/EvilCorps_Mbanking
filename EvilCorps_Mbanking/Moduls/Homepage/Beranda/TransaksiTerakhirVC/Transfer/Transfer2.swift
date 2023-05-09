//
//  Transfer.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 24/01/23.
//

import Foundation
import UIKit


class Transfer2: UIViewController{
    
    @IBOutlet weak var btnTransfer: UIButton!
    
    
    @IBOutlet weak var imgNavigation: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        

        imgNavigation.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        imgNavigation.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        imgNavigation.layer.shadowRadius = 1.0
        imgNavigation.layer.shadowOpacity = 1
        imgNavigation.layer.cornerRadius = 10
        btnTransfer.layer.cornerRadius = 8
        
        btnTransfer.addTarget(self, action: #selector(navKonfirm), for: .touchUpInside)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        imgNavigation.addGestureRecognizer(tap)
        imgNavigation.isUserInteractionEnabled = true

    }
    @objc func navKonfirm(){
        let transfer = KonfirmTransfer()
        self.navigationController?.pushViewController(transfer, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        self.navigationController?.popViewController(animated: true)
    }
}
