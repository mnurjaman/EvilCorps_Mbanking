//
//  Lupa Username.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 26/12/22.
//

import Foundation
import UIKit

class LupaUsername: UIViewController{
    
    @IBOutlet weak var imgNavigation: UIImageView!
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var btnSimpan: UIButton!
    @IBOutlet weak var lblNIK: UILabel!
    @IBOutlet weak var txtNIK: UITextField!
    @IBOutlet weak var lblerrorNIK: UILabel!
    @IBOutlet weak var lblnoRekening: UILabel!
    @IBOutlet weak var txtnoRekening: UITextField!
    @IBOutlet weak var lblerrorNorekening: UILabel!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblerrorPassword: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
   
        imgNavigation.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        imgNavigation.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        imgNavigation.layer.shadowRadius = 1.0
        imgNavigation.layer.shadowOpacity = 1
        imgNavigation.layer.cornerRadius = 10
        viewContent.layer.cornerRadius = 15
        viewContent.layer.borderWidth = 1
        viewContent.layer.borderColor = UIColor(red: 0.915, green: 0.941, blue: 1, alpha: 1).cgColor
        viewContent.layer.shadowColor = UIColor(red: 0.738, green: 0.785, blue: 0.904, alpha: 0.25).cgColor
        viewContent.layer.shadowOpacity = 1
        viewContent.layer.shadowRadius = 10
        viewContent.layer.shadowOffset = CGSize(width: 0, height: 3)
        btnSimpan.layer.cornerRadius = 8
        
        
        btnSimpan.addTarget(self, action: #selector(navNewUsername), for: .touchUpInside)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        imgNavigation.addGestureRecognizer(tap)
        navigationItem.titleView?.addSubview(imgNavigation)
        imgNavigation.isUserInteractionEnabled = true
        
        
        
        
        
        
        
        
        
        
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
    self.navigationController?.popViewController(animated: true)
    }
    @objc func navNewUsername(){
    let username = NewUsername()
    self.navigationController?.pushViewController(username, animated: true)
    self.navigationController?.isNavigationBarHidden = true
    }
    
    
    
}
