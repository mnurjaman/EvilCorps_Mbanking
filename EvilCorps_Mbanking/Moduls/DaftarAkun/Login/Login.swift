//
//  Login.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 26/12/22.
//

import Foundation
import UIKit
import Alamofire


class Login: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var lblDeskripsi: UILabel!
    @IBOutlet weak var btnLupaPassword: UIButton!
    
   @IBOutlet weak var btnDaftar: UIButton!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var lblWarningUsername: UILabel!
    
    @IBOutlet weak var lblWarningPassword: UILabel!
    
    @IBOutlet weak var iconAction: UIButton!
    
    
    
    let showPasswordButton = UIButton(type: .system)

    let myButton = UIButton(type: .system)
    
    var isPasswordVisible = false

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hindden()
        txtUsername.delegate = self
        txtPassword.delegate = self

        
        
        
        //Navigation
        btnDaftar.addTarget(self, action: #selector(navigationDaftar), for: .touchUpInside)
        btnLupaPassword.addTarget(self, action: #selector(navigationLupaPassword), for: .touchUpInside)
        btnLogin.addTarget(self, action: #selector(navigationHome), for: .touchUpInside)
        //eyePassword

        myButton.setImage(UIImage(named: "eyeOn"), for: .normal)
        myButton.setImage(UIImage(named: "eyeOff"), for: .selected)
        myButton.addTarget(self, action: #selector(imageTapped), for: .touchUpInside)
        view.addSubview(myButton)

            

      
        

        
        
        
        
        
        
        
        
        //set Style
        viewContent.layer.cornerRadius = 15
        btnLogin.layer.cornerRadius = 10
        viewContent.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        viewContent.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        viewContent.layer.shadowRadius = 1.7
        viewContent.layer.shadowOpacity = 1
        viewContent.layer.cornerRadius = 15
//
       
//
//
        
        
     
        
        
        
        
    }
    
    
    @IBAction func iconAction(_ sender: Any) {
        isPasswordVisible = !isPasswordVisible
        txtPassword.isSecureTextEntry = !isPasswordVisible
        if isPasswordVisible{
            iconAction.setImage(UIImage(named: "eyeOn"), for: .normal)
        } else {
            iconAction.setImage(UIImage(named: "eyeOff"), for: .normal)
        }
    }
    
    
    
    
    @IBAction func btnLogin(_ sender: Any) {
 
//        if validateLogin() -> Bool {
//            btnLogin.addTarget(self, action: #selector(navigationHome), for: .touchUpInside)
//            return
//        }
        self.validateLogin()
    
    }
    func validateLogin(){
        let username = txtUsername.text! 
        let password = txtPassword.text!
//        let loginRequest = [
//                 "email" : self.txtUsername.text! as String,
//                 "password" : self.txtPassword.text! as String
//             ]
        let popupSukses = PopupSukses()
        let popupgagal = PopupGagal()
//        let homepage = HomepageVC()
//        popupSukses.modalPresentationStyle = .custom
//        popupgagal.modalPresentationStyle = .custom
        if username == "" || password == "" {
            print("Username dan password tidak boleh kosong")
//            self.present(popupgagal, animated: true)
        } else {
            print("Username dan password benar")
            //
            AF.request("http://103.152.119.157:81/users", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: ["Content-Type": "application/json"]).responseData { [self] response in
                switch response.result {
                case .success (let data):
                    do {
                        debugPrint(response)
                        let postBody = try JSONDecoder().decode(dataLogin.self, from: data)
                        if (username == postBody.username && password == postBody.password){
                            print("test response => \(postBody.username) => \(postBody.password)")
                            self.present(popupSukses, animated: true)
                            btnLogin.addTarget(self, action: #selector(self.navigationHome), for: .touchUpInside)
                        } else {
                            self.present(popupgagal, animated: true)
                        }
                    } catch {
                        print("catch error")
                    }
                case .failure(let error):
                    print(error)
                }
            }
        }
    }

    


    
    @objc func imageTapped(_ sender: UITapGestureRecognizer? = nil){
        _ = UIImage(named: "eyeOn")
        txtPassword.isSecureTextEntry = false
    }
    @objc func navigationHome(){
        let home = TabbarVC()
        self.navigationController?.pushViewController(home, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    //navigaiton daftar
    @objc func navigationDaftar(){
        let daftar = PendaftaranAkun()
        self.navigationController?.pushViewController(daftar, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    //navigation lupa password
    @objc func navigationLupaPassword(){
        let akun = LupaAkun()
        self.navigationController?.pushViewController(akun, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    //hidden label
    func hindden(){
        lblWarningUsername.isHidden = true
        lblWarningPassword.isHidden = true
    }
    //show popup
    func showPopup(){
        let sukses = PopupSukses()
        _ = PopupGagal()
        sukses.modalPresentationStyle = .custom
        self.present(sukses, animated: false)
        self.navigationController?.pushViewController(sukses, animated: true)
    }
    @objc func Home(){
        let home = TabbarVC()
        self.navigationController?.pushViewController(home, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    

        
    
    
    
    
    
    
}
struct dataLogin : Decodable{
    let username : String
    let password : String
    
    enum CodingKeys: String, CodingKey{
        case username, password
    }
}

