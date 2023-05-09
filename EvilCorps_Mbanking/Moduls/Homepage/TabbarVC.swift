//
//  Homepage.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 11/01/23.
//
import Foundation
import UIKit


class TabbarVC: UITabBarController {
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        let BerandaVC = BerandaVC()
        let MutasiVC = MutasiVC()
        let HistoryVC = HistoryVC()
        let ProfilVC = ProfilVC()
        
        
        //set title
        BerandaVC.title = "Beranda"
        MutasiVC.title = "Mutasi"
        HistoryVC.title = "Riwayat"
        ProfilVC.title = "Profil"
        let font = UIFont(name: "Satoshi-Bold", size: 14)
        let attributes = [NSAttributedString.Key.font: font]
            BerandaVC.tabBarItem.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
            MutasiVC.tabBarItem.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
            HistoryVC.tabBarItem.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
            ProfilVC.tabBarItem.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
            tabBar.layer.masksToBounds = true

            tabBar.layer.shadowColor = UIColor(red: 0.66, green: 0.706, blue: 0.825, alpha: 0.2).cgColor
            tabBar.layer.shadowRadius = 12
            tabBar.frame.size.height = 90
            tabBar.layer.backgroundColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
       
 
        

        BerandaVC.tabBarItem.image = UIImage(named: "Beranda.png")
        MutasiVC.tabBarItem.image = UIImage(named: "Mutasi.png")
        HistoryVC.tabBarItem.image = UIImage(named: "Favorit.png")
        ProfilVC.tabBarItem.image = UIImage(named: "Profile.png")
        
   
    
            
        //instance view controller
        self.setViewControllers([BerandaVC, MutasiVC, HistoryVC, ProfilVC], animated: false)
        
            
    
            
            
     
    
        
//        let path = UIBezierPath(roundedRect: self.tabBar.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 20, height: 90))
//            let maskLayer = CAShapeLayer()
//            maskLayer.frame = self.tabBar.bounds
//            maskLayer.path = path.cgPath
//            self.tabBar.layer.mask = maskLayer
//            self.tabBar.backgroundColor = .white
        
    }
    
    
}
    
