//
//  Onboarding2.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 22/01/23.
//

import Foundation
import UIKit


class Onboarding2: UIViewController{
    
    @IBOutlet var viewbg: UIView!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnSkip: UIButton!
    @IBOutlet weak var btnBack: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self .setbackground()
        
  
        btnNext.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
        btnNext.addTarget(self, action: #selector(skippage), for: .touchUpInside)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        btnBack.addGestureRecognizer(tap)
        navigationItem.titleView?.addSubview(btnBack)
        btnBack.isUserInteractionEnabled = true

        
        
        
        
        
    }
    
    
    func setbackground(){
        let backgroundImage = UIImage(named: "onboarding02")
        viewbg.layer.contents = backgroundImage?.cgImage
    }
    
    
    //MARK: Navigation
    @objc func nextpage(){
        let Onboaring = Onboarding3()
        self.navigationController?.pushViewController(Onboaring, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        self.navigationController?.popViewController(animated: true)
    }
  
    @objc func skippage(){
        let Onboaring = Login()
        self.navigationController?.pushViewController(Onboaring, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }

    
    
    
}
