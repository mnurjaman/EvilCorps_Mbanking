//
//  Lupa Akun.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 26/12/22.
//

import Foundation
import UIKit

class LupaAkun: UIViewController{
    
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var imgNavigation: UIImageView!
    @IBOutlet weak var viewLupaPassword: UIView!
    @IBOutlet weak var viewLupaUsername: UIView!
    @IBOutlet weak var btnLupaPassword: UIButton!
    @IBOutlet weak var btnLupaUsername: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        imgNavigation.addGestureRecognizer(tap)
        navigationItem.titleView?.addSubview(imgNavigation)
        imgNavigation.isUserInteractionEnabled = true
     
        btnLupaPassword.addTarget(self, action: #selector(navlupaPassword), for: .touchUpInside)
        btnLupaUsername.addTarget(self, action: #selector(navlupaUsername), for: .touchUpInside)
   
        
        
        
        
        
        
        
        
        viewContent.layer.cornerRadius = 15
        viewLupaPassword.layer.cornerRadius = 12
        viewLupaPassword.layer.borderWidth = 2
        viewLupaPassword.layer.borderColor = UIColor(red: 0.183, green: 0.508, blue: 1, alpha: 1).cgColor
        viewLupaUsername.layer.cornerRadius = 12
        viewLupaUsername.layer.borderWidth = 2
        viewLupaUsername.layer.borderColor = UIColor(red: 0.183, green: 0.508, blue: 1, alpha: 1).cgColor
        imgNavigation.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        imgNavigation.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        imgNavigation.layer.shadowRadius = 1.0
        imgNavigation.layer.shadowOpacity = 1
        imgNavigation.layer.cornerRadius = 10

     
        
        
    }
    
//    @obj func navLupaPassword()
    
    @objc func viewTapped(){
       performSegue(withIdentifier: "LupaPassword", sender: self)
    }
                                 
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
            self.navigationController?.popViewController(animated: true)
    }
    @objc func navlupaPassword(){
        let password = LupaPassword()
        self.navigationController?.pushViewController(password, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    @objc func navlupaUsername(){
        let username = LupaUsername()
        self.navigationController?.pushViewController(username, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
   
   
                    
                                 
        
                                 
}
