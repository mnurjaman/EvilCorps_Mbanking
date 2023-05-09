//
//  ProfilVC.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 13/01/23.
//

import Foundation
import UIKit


class ProfilVC: UIViewController{
    

    @IBOutlet weak var bgeditprofil: UIView!
    @IBOutlet weak var avatarbg: UIView!
    @IBOutlet weak var bgHeader: UIView!
    @IBOutlet weak var bgedtProfil: UIView!
    @IBOutlet weak var bgKeluar: UIView!
    @IBOutlet weak var viewBottom: UIView!

    @IBOutlet weak var imgNavigation: UIButton!
    
    
    @IBOutlet weak var btnEditProfil: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        
        
        
        
        
        
        
        
        
        self.tabBarController?.tabBar.isHidden = true
//
//        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
//        swipeUp.direction = .up
//        viewbottom.addGestureRecognizer(swipeUp)
//
//        let tap = UITapGestureRecognizer(target: self, action: #selector(handleGesture))
//        viewbottom.addGestureRecognizer(tap)
//
//
//
        
       
        
        
        
        imgNavigation.addTarget(self, action: #selector(homepage), for: .touchUpInside)
        btnEditProfil.addTarget(self, action: #selector(navEditProfil), for: .touchUpInside)
        
        
 
        bgeditprofil.layer.cornerRadius = 8
        bgHeader.layer.cornerRadius = 12
        bgeditprofil.layer.cornerRadius = 8
        bgKeluar.layer.cornerRadius = 8
        avatarbg.layer.cornerRadius = 16
        viewBottom.layer.shadowColor = UIColor(red: 0.738, green: 0.785, blue: 0.904, alpha: 0.25).cgColor
        viewBottom.layer.shadowOpacity = 1
        viewBottom.layer.shadowRadius = 10
        viewBottom.layer.shadowOffset = CGSize(width: 0, height: -3)
        viewBottom.layer.cornerRadius = 20
        viewBottom.layer.shadowRadius = 20
        
        imgNavigation.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        imgNavigation.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        imgNavigation.layer.shadowRadius = 1.0
        imgNavigation.layer.shadowOpacity = 1
        imgNavigation.layer.cornerRadius = 10
    }

    @objc func homepage(){
        let home = TabbarVC()
        self.navigationController?.pushViewController(home, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
    @objc func navEditProfil(){
        let profil = EditProfile()
        self.navigationController?.pushViewController(profil, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
    


    
    
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        self.navigationController?.popViewController(animated: true)
        
    }
//    @objc func handleGesture(gesture: UIGestureRecognizer) -> Void {
//        if gesture is UISwipeGestureRecognizer || gesture is UITapGestureRecognizer {
//            // Tampilkan view baru dari bawah
//            let daftar = PendaftaranAkun()
//            self.navigationController?.pushViewController(daftar, animated: true)
//            self.navigationController?.isNavigationBarHidden = true
//        }
    
    
    
    
}
    



