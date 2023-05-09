//
//  Pendaftaran-Akun.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 26/12/22.
//

import Foundation
import UIKit



class PendaftaranAkun : UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var viewContent: UIView!
    
    @IBOutlet weak var imgNavigation: UIImageView!
    //lbl & txtNoRekening
    @IBOutlet weak var lblNomorRekening: UILabel!
    @IBOutlet weak var errorNoRekening: UILabel!
    @IBOutlet weak var txtNoRekening: UITextField!
    @IBOutlet weak var errorNoRekening1: UILabel!
    //lbl & txt nik
    @IBOutlet weak var lblNIK: UILabel!
    @IBOutlet weak var errorNik: UILabel!
    @IBOutlet weak var txtNik: UITextField!
    @IBOutlet weak var errorNik1: UILabel!
    //lbl & txt noTelpon
    @IBOutlet weak var lblNoTelpon: UILabel!
    @IBOutlet weak var errorNoTelp: UILabel!
    @IBOutlet weak var txtNoTelpon: UITextField!
    @IBOutlet weak var errorNoTelp1: UILabel!
    //
    @IBOutlet weak var lblNamaLengkap: UILabel!
    @IBOutlet weak var errorNamaLengkap: UILabel!
    @IBOutlet weak var txtNamaLengkap: UITextField!
    @IBOutlet weak var lblTanggalLahir: UILabel!
    @IBOutlet weak var errorTglLahir: UILabel!
    @IBOutlet weak var txtTglLahir: UITextField!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var errorEmail: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var errorEmail1: UILabel!
    @IBOutlet weak var lblDeskripsi: UILabel!
    @IBOutlet weak var btnSelanjutnya: UIButton!
    
    
    
    
    
    let datePicker = UIDatePicker()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenerror()
        txtNoRekening.delegate = self
        createDatePicker()
        

        


  
   
  
        
        
     

        //navigation
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        imgNavigation.addGestureRecognizer(tap)
        imgNavigation.isUserInteractionEnabled = true
        //Style
        btnSelanjutnya.layer.cornerRadius = 10
        txtNoRekening.layer.cornerRadius = 10
        viewContent.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        viewContent.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        viewContent.layer.shadowRadius = 1.7
        viewContent.layer.shadowOpacity = 1
        viewContent.layer.cornerRadius = 15
        imgNavigation.layer.shadowColor = UIColor(red: 0/188.0, green: 0/200.0, blue: 0/231.0, alpha: 0.25).cgColor
        imgNavigation.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        imgNavigation.layer.shadowRadius = 1.0
        imgNavigation.layer.shadowOpacity = 1
        imgNavigation.layer.cornerRadius = 10
    }
    
    
    
    
    @IBAction func noRekening_act(_ sender: Any) {
        let text = txtNoRekening.text ?? ""
        if text.isValidNoRekening() {
            errorNoRekening.isHidden = true
            errorNoRekening1.isHidden = true
        } else {
            errorNoRekening.textColor = UIColor.red
            errorNoRekening1.textColor = UIColor.red
            errorNoRekening1.isHidden = false
            errorNoRekening1.text = "Nomor rekening harus terdiri dari 16 digit"
        }
        checkForValidForm()
    }
    
    @IBAction func nik_act(_ sender: Any) {
        let text = txtNik.text ?? ""
        if text.isValidNik() {
            errorNik.isHidden = true
        } else {
            errorNoRekening.textColor = UIColor.red
            errorNik1.textColor = UIColor.red
            errorNik1.isHidden = false
            errorNik1.text = "NIK harus terdiri dari 16 digit"
           

        }
        checkForValidForm()
    }
    
    @IBAction func noTelp_act(_ sender: Any) {
        let text = txtNoTelpon.text ?? ""
        if text.isValidNoTelp() {
            errorNoRekening.isHidden = true
            errorNoRekening1.isHidden = true
        } else {
            errorNoTelp1.isHidden = false
            errorNoTelp1.text = "Nomor rekening harus terdiri dari 16 digit"
        }
        checkForValidForm()
    }
    
    @IBAction func nama_act(_ sender: Any) {
        let text = txtNamaLengkap.text ?? ""
        if text.isValidNama() {
            errorNamaLengkap.isHidden = true
        } else {
            errorNamaLengkap.textColor = UIColor.red
            errorNamaLengkap.isHidden = false
        }
        checkForValidForm()
    }
    
    @IBAction func birth_act(_ sender: Any) {
        let text = txtTglLahir.text ?? ""
        if text.isValidNoRekening() {
            errorTglLahir.isHidden = true
        } else {
//            errorNoRekening.textColor = UIColor.red
//            errorNoRekening1.textColor = UIColor.red
//            errorNoRekening1.isHidden = false
//            errorNoRekening1.text = "Nomor rekening harus terdiri dari 16 digit"
        }
        checkForValidForm()
    }
    
    @IBAction func email_act(_ sender: Any) {
        let text = txtEmail.text ?? ""
        if text.isValidEmail() {
            errorNoRekening.isHidden = true
            errorEmail1.isHidden = true
        } else {
            errorNoRekening.textColor = UIColor.red
            errorNoRekening1.textColor = UIColor.red
            errorEmail1.isHidden = false
            errorEmail1.text = "Format email tidak sesuai"
        }
        checkForValidForm()
    }
    
    
    
    
    

    @IBAction func txtValueChange(_ sender: UIButton) {
        hiddenerror()
    }
    // Validasi semua form
    func checkForValidForm(){
        if
            errorNoRekening1.isHidden && errorNik1.isHidden && errorNoTelp1.isHidden && errorEmail1.isHidden {
            btnSelanjutnya.isEnabled = true
        } else {
            btnSelanjutnya.backgroundColor =  UIColor(red: 47/255, green: 130/255, blue: 255/255, alpha: 1)
            btnSelanjutnya.isEnabled = false
            btnSelanjutnya.addTarget(self, action: #selector(navAktivasiAkun), for: .touchUpInside)
        }
        
    }
  



    
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        self.navigationController?.popViewController(animated: true)
    }
    @objc func navAktivasiAkun(){
        let aktivasi = AktivasiAkun()
        self.navigationController?.pushViewController(aktivasi, animated: true)
        self.navigationController?.isNavigationBarHidden = true
    }
    //DatePicker
    func createToolbar() -> UIToolbar{
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        //done button
        let donebtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([donebtn], animated: true)
        return toolbar
    }
    func createDatePicker() {
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        } else {
        }
        datePicker.datePickerMode = .date
        txtTglLahir.textAlignment = .left
        txtTglLahir.inputView = datePicker
        txtTglLahir.inputAccessoryView = createToolbar()
    }
    @objc func donePressed() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        self.txtTglLahir.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    

    func hiddenerror(){
        errorNik.isHidden = true
        errorNik1.isHidden = true
        errorEmail.isHidden = true
        errorEmail1.isHidden = true
        errorNoTelp.isHidden = true
        errorNoTelp1.isHidden = true
        errorNamaLengkap.isHidden = true
        txtNoRekening.text = ""
        txtNik.text = ""
        txtNoTelpon.text = ""
        txtNamaLengkap.text = ""
        txtTglLahir.text = ""
        txtEmail.text = ""
        btnSelanjutnya.isEnabled = true
        btnSelanjutnya.backgroundColor = .gray
    }
}



extension String {
    func isValidNoRekening() -> Bool {
        let inputRegEx = "[0-9]{16}"
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with:self)
    }
    func isValidNik() -> Bool {
        let inputRegEx = "[0-9]{16}"
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with:self)
    }
    func isValidNoTelp() -> Bool {
        let inputRegEx = "[A-Z][a-z] "
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with:self)
    }
    func isValidNama() -> Bool {
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z]*$")
        let range = NSPredicate(format: "SELF MATCHES %@", regex)
        return range.evaluate(with:self)
        //        let inputRegEx = "[0-9]{10,13}$"
        //        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        //        return inputpred.evaluate(with:self)
    }
    //    func isValidEmail() -> Bool {
    //        let inputRegEx = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[A-Za-z]{2,64}"
    //        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
    //        return inputpred.evaluate(with:self)
    //    }
    func isValidEmail() -> Bool {
        let inputRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with:self)
    }
    func isValidPassword() -> Bool {
        let inputRegEx = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()-_+={}?>.<,:;~`']{8,}$"
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with:self)
    }
    //    public func filterPhoneNumber() -> String {
    //        return String(self.filter {!" ()._-\n\t\r".contains($0)})
    //    }
    //}
    //
    //extension PendaftaranAkun: UITextFieldDelegate{
    
    //    func textFieldDidEndEditing(_ textField: UITextField) {
    //        <#code#>
    //    }
    //    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    //           switch textField {
    //           case txtNoRekening:
    //               txtNoRekening.becomeFirstResponder()
    //           case lastNameTextField:
    //               passwordTextField.becomeFirstResponder()
    //           case passwordTextField:
    //               // Validate Text Field
    //               let (valid, message) = validate(textField)
    //
    //               if valid {
    //                   emailTextField.becomeFirstResponder()
    //               }
    //
    //               // Update Password Validation Label
    //               self.passwordValidationLabel.text = message
    //
    //               // Show/Hide Password Validation Label
    //               UIView.animate(withDuration: 0.25, animations: {
    //                   self.passwordValidationLabel.isHidden = valid
    //               })
    //           default:
    //               emailTextField.resignFirstResponder()
    //           }
    //
    //           return true
    //       }
    
    
}
