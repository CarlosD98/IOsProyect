//
//  SignIn.swift
//  Pinterest
//
//  Created by Leobardo Verdugo on 15/03/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit
import Firebase
class LogIn : UIViewController {
    override func viewDidLoad() {
            super.viewDidLoad()
        view.backgroundColor = UIColor .white
        view.addSubview(logo)
        view.addSubview(Mail)
        view.addSubview(PassW)
        view.addSubview(BuutonSN)
        
        Mail.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 60).isActive = true
        PassW.topAnchor.constraint(equalTo: Mail.bottomAnchor, constant: 5).isActive = true
        BuutonSN.topAnchor.constraint(equalTo: PassW.bottomAnchor, constant: 30).isActive = true
        
        Mail.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        PassW.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        BuutonSN.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        
        Mail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        PassW.heightAnchor.constraint(equalToConstant: 50).isActive = true
        BuutonSN.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        Mail.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        PassW.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        BuutonSN.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        
        
        
    }
    

let logo : UIImageView = {
        let lg = UIImageView(frame: CGRect(x: 105, y: 150, width: 200, height: 200))
        lg.image = UIImage(named: "pinterestL.png")
        return lg
        
    }()
let Mail: UITextField = {
    let tf = UITextField ()
    tf.layer.cornerRadius = 5
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.placeholder = "Enter Mail"

    return tf
    
}()
let PassW: UITextField = {
    let tf = UITextField ()
    tf.layer.cornerRadius = 5
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.isSecureTextEntry = true
    tf.placeholder = "Password"
    return tf
    
}()

let BuutonSN: UIButton = {
    let sn = UIButton()
    sn.backgroundColor = UIColor .red
    sn.layer.cornerRadius = 5
    sn.translatesAutoresizingMaskIntoConstraints = false
    sn.setTitle("Enter",for: .normal)
    sn.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
    return sn
    }()

@objc func handleButton (_ sender:UIButton ){
    let p = PassW.text
    let m = Mail.text
    if  m != nil && p != nil{
        Auth.auth().signIn(withEmail: m!, password: p!) {(user, error) in
            print("Success")
            let main = MainPage()
            self.navigationController?.pushViewController(main, animated: true)
            
        }
        
    }
    
}
}
