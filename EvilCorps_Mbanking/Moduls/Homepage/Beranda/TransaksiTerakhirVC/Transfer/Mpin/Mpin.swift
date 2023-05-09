//
//  MPIN.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 24/01/23.
//

import Foundation
import UIKit


class Mpin: UIViewController{
    
    @IBOutlet weak var imgNavigation: UIImageView!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    
    @IBOutlet weak var view11: UIView!
    @IBOutlet weak var view22: UIView!
    @IBOutlet weak var view33: UIView!
    @IBOutlet weak var view88: UIView!
    @IBOutlet weak var view44: UIView!
    @IBOutlet weak var view99: UIView!
    @IBOutlet weak var view77: UIView!
    @IBOutlet weak var view55: UIView!
    @IBOutlet weak var view66: UIView!
    @IBOutlet weak var view10: UIView!
    
    @IBOutlet weak var viewDelete: UIView!
    @IBOutlet weak var btndelete: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        view1.layer.cornerRadius = 10
        view2.layer.cornerRadius = 10
        view3.layer.cornerRadius = 10
        view4.layer.cornerRadius = 10
        view5.layer.cornerRadius = 10
        view6.layer.cornerRadius = 10
        view11.layer.cornerRadius = 35
        view22.layer.cornerRadius = 35
        view33.layer.cornerRadius = 35
        view44.layer.cornerRadius = 35
        view55.layer.cornerRadius = 35
        view66.layer.cornerRadius = 35
        view77.layer.cornerRadius = 35
        view88.layer.cornerRadius = 35
        view99.layer.cornerRadius = 35
        view10.layer.cornerRadius = 35
        btndelete.layer.cornerRadius = 35
        viewDelete.layer.cornerRadius = 35
        imgNavigation.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        imgNavigation.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        imgNavigation.layer.shadowRadius = 1.0
        imgNavigation.layer.shadowOpacity = 1
        imgNavigation.layer.cornerRadius = 10
        
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        imgNavigation.addGestureRecognizer(tap)
        imgNavigation.isUserInteractionEnabled = true
        btndelete.addTarget(self, action: #selector(navResi), for: .touchUpInside)

        
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        self.navigationController?.popViewController(animated: true)
    }
    @objc func navResi(){
        let resi = ResiTransaksi()
        self.navigationController?.pushViewController(resi, animated: false)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    
}
