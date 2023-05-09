//
//  EditProfile.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 24/01/23.
//

import Foundation
import UIKit


class EditProfile: UIViewController{
    
    
    @IBOutlet weak var imgNavigation: UIImageView!
    @IBOutlet weak var btnEditUsername: UIButton!
    @IBOutlet weak var btnEditMpin: UIButton!
    @IBOutlet weak var btnEditPassword: UIButton!
    
    @IBOutlet weak var viewUsername: UIView!
    
    @IBOutlet weak var viewMpin: UIView!
    
    @IBOutlet weak var viewPassword: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        
        viewMpin.layer.cornerRadius = 8
        viewUsername.layer.cornerRadius = 8
        viewPassword.layer.cornerRadius = 8
        
        btnEditUsername.addTarget(self, action: #selector(navEditUsername), for: .touchUpInside)
        btnEditPassword.addTarget(self, action: #selector(navEditPassword), for: .touchUpInside)
        btnEditMpin.addTarget(self, action: #selector(navEditMpin), for: .touchUpInside)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        imgNavigation.addGestureRecognizer(tap)
        imgNavigation.isUserInteractionEnabled = true
        
        
       
       
       
    }
    @objc func navEditUsername(){
        let edit = EditUsername()
        self.navigationController?.pushViewController(edit, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
    @objc func navEditMpin(){
        let edit = EditMpin()
        self.navigationController?.pushViewController(edit, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @objc func navEditPassword(){
        let edit = EditPassword()
        self.navigationController?.pushViewController(edit, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
