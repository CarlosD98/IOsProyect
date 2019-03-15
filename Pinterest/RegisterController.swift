//
//  RegisterController.swift
//  Pinterest
//
//  Created by Alumno IDS on 28/02/19.
//  Copyright © 2019 Alumno. All rights reserved.
//
import UIKit
import Foundation
import Firebase

class RegisterController: UIViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:1)
        view.addSubview(Label)
        view.addSubview(TF)
        view.addSubview(Continue)
        
        Label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        TF.topAnchor.constraint(equalTo: Label.bottomAnchor).isActive = true
        
        Label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        TF.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        Continue.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        TF.heightAnchor.constraint(equalToConstant: 50).isActive = true
        Continue.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        TF.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -60).isActive = true
        Continue.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        
        Continue.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }
    var user : User?
    
    enum Nav {
        case mail
        case pass
        case age
    }
    var nav: Nav?
    let Continue: UIButton = {
        let cont1 = UIButton()
        cont1.backgroundColor = UIColor(red:189/255,green:8/255,blue:28/255,alpha:1)
        cont1.setTitle("Continue", for: .normal)
        cont1.translatesAutoresizingMaskIntoConstraints=false
        cont1.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        return cont1
    }()
    lazy var TF : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        if let TempNav = nav
        {
            switch TempNav{
                case .mail : tf.placeholder = "Enter email adress "
                case .pass :
                    tf.placeholder = "Enter Password "
                    tf.isSecureTextEntry = true
                case .age : tf.placeholder = "Enter age "
            }
        }
        
        tf.backgroundColor = .white
        return tf
    }()
    lazy var Label : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        if let TempNav = nav
        {
            switch TempNav{
            case .mail: lb.text = "Email"
            case .pass: lb.text = "Password"
            case .age: lb.text = "Age"
            }
            
        }
        
        return lb
    }()
    @objc func handleButton (_ sender:UIButton){
        
        
            let register = RegisterController()
        if let TempNav = nav
        {
            switch TempNav{
            case .mail :
                let user1 = User()
                user1.Mail = TF.text
                register.user = user1
                register.nav = .pass
                self.navigationController?.pushViewController(register, animated: true)
            case .pass :
                if let CheckUser = user {
                    CheckUser.pass = TF.text
                    register.user = CheckUser
                    register.nav = .age
                    self.navigationController?.pushViewController(register, animated: true)
                }
                
            case .age :
                if let CheckUser = user {
                    CheckUser.Age = Int(TF.text!)
                    register.user = CheckUser
                    let m = CheckUser.Mail!
                    let p = CheckUser.pass!
                    
                    
                    Auth.auth().createUser(withEmail: m,password: p ){(data:AuthDataResult?,error) in
                        if error != nil{
                            print(error as Any)
                        }
                        let U = data?.user
                        if let uid = U?.uid{
                            let db = Database.database().reference(fromURL:"https://pinterest-e52be.firebaseio.com/")
                            let values = ["email" :m, "password": p]
                            let usersRef = db.child("users").child(uid)
                            usersRef.updateChildValues(values, withCompletionBlock: { (error, databaseRef:DatabaseReference?) in
                                if  error != nil {
                                    print(error)
                                }
                            })
                }
            }
                    self.navigationController?.pushViewController(MainPage(), animated: true)
        }
                
        }
        
        }}
}

