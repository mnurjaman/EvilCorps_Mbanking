//
//  KonfirmTransfer.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 24/01/23.
//

import Foundation
import UIKit


class KonfirmTransfer: UIViewController{
    
    
    @IBOutlet weak var view1: UIView!
    
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var imgNavigation: UIImageView!
    
    @IBOutlet weak var btnTransfer: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        imgNavigation.addGestureRecognizer(tap)
        imgNavigation.isUserInteractionEnabled = true
        btnTransfer.addTarget(self, action: #selector(mpin), for: .touchUpInside)
        
        
        
        
        
        
        btnTransfer.layer.cornerRadius = 8
        view1.layer.cornerRadius = 12
        view2.layer.cornerRadius = 12
        imgNavigation.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        imgNavigation.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        imgNavigation.layer.shadowRadius = 1.0
        imgNavigation.layer.shadowOpacity = 1
        imgNavigation.layer.cornerRadius = 10
 
        
    }
    
    @objc func mpin(){
        let transfer = Mpin()
        self.navigationController?.pushViewController(transfer, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}
