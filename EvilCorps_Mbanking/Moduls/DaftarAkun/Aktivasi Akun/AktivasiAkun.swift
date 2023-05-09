//
//  Aktivasi Akun.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 26/12/22.
//

import Foundation
import UIKit


class AktivasiAkun: UIViewController{
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var lblWarningUsername1: UILabel!
    @IBOutlet weak var lblWarningUsername: UILabel!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var lblWarningPassword: UILabel!
    @IBOutlet weak var txtPassword: UITextField!

    @IBOutlet weak var txtKonfirmPassword: UITextField!
    @IBOutlet weak var lblWarningKonfirmPassword1: UILabel!
    @IBOutlet weak var lblWarningKonfirmPassword: UILabel!
    @IBOutlet weak var imgNavigation: UIImageView!
    
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var btnSelanjutnya: UIButton!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hidden()

   
       
     
        //navigation
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        imgNavigation.addGestureRecognizer(tap)
        navigationItem.titleView?.addSubview(imgNavigation)
        imgNavigation.isUserInteractionEnabled = true
        btnSelanjutnya.addTarget(self, action: #selector(navAktivasiAkun), for: .touchUpInside)

        
        
        
//        Style
        viewContent.layer.shadowColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor
        viewContent.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        viewContent.layer.shadowRadius = 1.7
        viewContent.layer.shadowOpacity = 0.45
        viewContent.layer.cornerRadius = 15
        btnSelanjutnya.layer.cornerRadius = 10
        imgNavigation.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        imgNavigation.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        imgNavigation.layer.shadowRadius = 1.0
        imgNavigation.layer.shadowOpacity = 1
        imgNavigation.layer.cornerRadius = 10
        
        
        
        
        
        
        
     
    }
    
    
    
    func validateform(){
        let username = txtUsername.text
        let password = txtPassword.text
        let konfirmpassword = txtKonfirmPassword.text
        
//        if username?.isEmpty && password?.isEmpty && konfirmpassword?.isEmpty{
//
//        }

    }
   
    
    
    
    
    
    
    
    
    
    @objc func navAktivasiAkun(){
        self.navigationController?.pushViewController(BuatMpin(), animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        self.navigationController?.popViewController(animated: true)
    }
    func hidden(){
        lblWarningUsername.isHidden = true
        lblWarningUsername1.isHidden = true
        lblWarningPassword.isHidden = true
        lblWarningKonfirmPassword.isHidden = true
        lblWarningKonfirmPassword1.isHidden = true
    }
    
    
    

 
 
    
    
    
    
}
