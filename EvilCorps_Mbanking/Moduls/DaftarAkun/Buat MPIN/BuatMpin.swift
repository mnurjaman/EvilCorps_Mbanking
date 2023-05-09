//
//  Buat MPIN.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 26/12/22.
//

import Foundation
import UIKit



class BuatMpin: UIViewController{
    
    @IBOutlet weak var lblMpin: UILabel!
    @IBOutlet weak var lblWarningMPIN: UILabel!
    @IBOutlet weak var txtMpin: UITextField!
    @IBOutlet weak var lblKonfirmMpin: UILabel!
    @IBOutlet weak var lblWarningKonfirmMpin: UILabel!
    @IBOutlet weak var txtKonfirmMpin: UITextField!
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var imgNavigation: UIImageView!
    @IBOutlet weak var btnSelanjutnya: UIButton!
    
    @IBOutlet weak var lblerrorMpin: UILabel!
    
    @IBOutlet weak var lblerrorConfirmMpin: UILabel!
    
    
    let characterSetAngka = CharacterSet(charactersIn: "0123456789")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//
//        txtMpin.delegate = self
//        txtKonfirmMpin.delegate = self
        hidden()
        //navigation
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        imgNavigation.addGestureRecognizer(tap)
        navigationItem.titleView?.addSubview(imgNavigation)
        imgNavigation.isUserInteractionEnabled = true
        btnSelanjutnya.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
        //style
        viewContent.layer.cornerRadius = 15
        viewContent.layer.shadowColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor
        viewContent.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        viewContent.layer.shadowRadius = 1.7
        viewContent.layer.shadowOpacity = 0.45
        btnSelanjutnya.layer.cornerRadius = 10
        imgNavigation.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        imgNavigation.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        imgNavigation.layer.shadowRadius = 1.0
        imgNavigation.layer.shadowOpacity = 1
        imgNavigation.layer.cornerRadius = 10
        
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        self.navigationController?.popViewController(animated: true)
    }
    @objc func nextpage(){
        let login = Login()
        self.navigationController?.pushViewController(login, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func validasiMPIN(_ string: String) -> Bool {
        // Periksa apakah string tidak kosong
        if string.count == 0 {
            return txtMpin.text?.count == 8
        }
        // Periksa apakah string hanya terdiri dari angka
        if string.rangeOfCharacter(from: .decimalDigits.inverted) != nil {
            return false
        }
        // Periksa apakah panjang string tidak melebihi 8 karakter
        return txtMpin.text?.count ?? 0 + string.count <= 8
    }
    func hidden(){
        lblerrorConfirmMpin.isHidden = true
        lblerrorMpin.isHidden = true
    }

    
//    @IBAction func btnSelanjutnya(_ sender: Any) {
//        if !validasiMPIN(){return}
//
//
//
//    }
//
//    func buttonGrayedOut(){
//        if validasiMPIN(){
//
//        }
//    }
//
}
//extension BuatMpin: UITextViewDelegate{
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        if
//}
