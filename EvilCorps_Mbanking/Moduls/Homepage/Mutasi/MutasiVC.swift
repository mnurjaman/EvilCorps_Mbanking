//
//  MutasiVC.swift
//  EvilCorps_Mbanking
//
//  Created by Muhammad Nurjaman on 13/01/23.
//

import Foundation
import UIKit

class MutasiVC: UIViewController{
    
    @IBOutlet weak var txtJenisTransaksi: UITextField!
    @IBOutlet weak var txtDate: UITextField!
    @IBOutlet weak var txtDate2: UITextField!
    @IBOutlet weak var btnSerch: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    let datePicker = UIDatePicker()
    let pickerVIew = UIPickerView()
    
    
    var data = ["Transaksi", "Keluar", "Masuk"]
    let data1: [Mutasi] = [
      Mutasi(lblTransaksi: "Top Up E-Wallet", lblTransaksi1: "Gopay - 08123123123", lblDate: "11 Des, 2022 | 14:22", lblNominal: "Rp.14.000.000", imgTransaksi: "icon"),
      Mutasi(lblTransaksi: "Transfer", lblTransaksi1: "Ovo - 08123123123", lblDate: "01 Des, 2022 | 17:22", lblNominal: "Rp.111.000.000", imgTransaksi: "icon1"),
      Mutasi(lblTransaksi: "Top Up E-Wallet", lblTransaksi1: "Dana - 08123123123", lblDate: "13 Des, 2022 | 11:22", lblNominal: "Rp.11.000.000", imgTransaksi: "icon2"),
      Mutasi(lblTransaksi: "Transfer", lblTransaksi1: "BRI - 08123123123", lblDate: "18 Des, 2022 | 12:22", lblNominal: "Rp.190.000.000", imgTransaksi: "icon3"),
      Mutasi(lblTransaksi: "Saldo Masuk", lblTransaksi1: "BNI - 08123123123", lblDate: "09 Des, 2022 | 00:22", lblNominal: "Rp.18.000.000", imgTransaksi: "icon4"),
      Mutasi(lblTransaksi: "Top Up E-Wallet", lblTransaksi1: "Shopepay - 08123123123", lblDate: "19 Des, 2022 | 10:22", lblNominal: "Rp.15.000.000", imgTransaksi: "icon5"),

    ]
    
    
    
    
   
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 

        setupTextFields()
        createDatePicker()
        createDatePicker2()
        pickerVIew.delegate = self
        pickerVIew.dataSource = self
        //Table View
        let nib = UINib(nibName: "CellMutasi", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CellMutasiItem")
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        txtJenisTransaksi.inputView = pickerVIew
        btnSerch.layer.cornerRadius = 10
        
        
    }
    
    @IBAction func btnSerch(_ sender: UIButton) {
    }
    
    
    
    

    func setupTextFields() {
        let textFields: [UITextField] = [txtDate, txtDate2, txtJenisTransaksi]
        for (_) in textFields.enumerated() {
            txtDate.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
            btnSerch.isEnabled = false
//            btnSerch.layer.backgroundColor = UIColor(red: 0.183, green: 0.508, blue: 1, alpha: 1).cgColor
            
        }
    }

    @objc func textFieldDidChange(_ textField: UITextField) {
        let textFields: [UITextField] = [txtDate, txtDate2, txtJenisTransaksi]
        for (_) in textFields.enumerated() {
            if txtDate.text != "" && txtDate2.text != "" && txtJenisTransaksi.text != ""{
                btnSerch.isEnabled = true
            } else {
                btnSerch.isEnabled = false
                btnSerch.layer.backgroundColor = UIColor(red: 0.183, green: 0.508, blue: 1, alpha: 1).cgColor
            }
        }
    }

    
    
    func createToolbar() -> UIToolbar{
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()

        //done button
        let donebtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([donebtn], animated: true)
        return toolbar
    }
    func createToolbar2() -> UIToolbar{
        //toolbar
        let toolbar2 = UIToolbar()
        toolbar2.sizeToFit()
        
        //done button
        let donebtn2 = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed2))
        toolbar2.setItems([donebtn2], animated: true)
        return toolbar2
    }
    //date1
    func createDatePicker() {
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        } else {
        }
        datePicker.datePickerMode = .date
        txtDate.textAlignment = .left
        txtDate.inputView = datePicker
        txtDate.inputAccessoryView = createToolbar()
    }
    @objc func donePressed() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        self.txtDate.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    //date2
    func createDatePicker2() {
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        } else {
        }
        datePicker.datePickerMode = .date
        txtDate2.textAlignment = .left
        txtDate2.inputView = datePicker
        txtDate2.inputAccessoryView = createToolbar2()
    }
    @objc func donePressed2() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        self.txtDate2.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }

    
    
    
    

    
}

extension MutasiVC: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txtJenisTransaksi.text = data[row]
        txtJenisTransaksi.resignFirstResponder()
    }
}
extension MutasiVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data1.count
//        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Mutasi = data1[indexPath.row]
        let CellMutasi = tableView.dequeueReusableCell(withIdentifier: "CellMutasiItem", for: indexPath) as! CellMutasi
        CellMutasi.imgTransaksi.image = UIImage(named: Mutasi.imgTransaksi)
        CellMutasi.lblTansaksi.text = Mutasi.lblTransaksi
        CellMutasi.lblTransaksi1.text = Mutasi.lblTransaksi1
        CellMutasi.lblDate.text = Mutasi.lblDate
        CellMutasi.lblNominal.text = Mutasi.lblNominal
        return CellMutasi
    }
}
    
    
struct Mutasi{
    let lblTransaksi: String
    let lblTransaksi1: String
    let lblDate: String
    let lblNominal: String
    let imgTransaksi: String
}
