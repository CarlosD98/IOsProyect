//
//  ViewController.swift
//  Pinterest
//
//  Created by Alumno on 31/01/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(red: 61/255, green: 91/255, blue: 151/255, alpha: 1)
        view.addSubview(inputContainerV)
        inputContainerV.addSubview(nameTextf)
        inputContainerV.addSubview(Mailtf)
        inputContainerV.addSubview(PassWordTF)
        
        nameTextf.topAnchor.constraint(equalTo: inputContainerV.topAnchor).isActive = true
        nameTextf.heightAnchor.constraint(equalTo: inputContainerV.heightAnchor, multiplier: 1/3).isActive = true
        nameTextf.widthAnchor.constraint(equalTo: inputContainerV.widthAnchor).isActive = true
        nameTextf.leftAnchor.constraint(equalTo: inputContainerV.leftAnchor).isActive = true
        
        Mailtf.topAnchor.constraint(equalTo: nameTextf.bottomAnchor).isActive = true
        Mailtf.heightAnchor.constraint(equalTo: inputContainerV.heightAnchor, multiplier: 1/3).isActive = true
        Mailtf.widthAnchor.constraint(equalTo: inputContainerV.widthAnchor).isActive = true
        Mailtf.leftAnchor.constraint(equalTo: inputContainerV.leftAnchor).isActive = true
        
        PassWordTF.topAnchor.constraint(equalTo: Mailtf.bottomAnchor).isActive = true
        PassWordTF.heightAnchor.constraint(equalTo: inputContainerV.heightAnchor, multiplier: 1/3).isActive = true
        PassWordTF.widthAnchor.constraint(equalTo: inputContainerV.widthAnchor).isActive = true
        PassWordTF.leftAnchor.constraint(equalTo: inputContainerV.leftAnchor).isActive = true
        
        inputContainerV.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerV.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerV.heightAnchor.constraint(equalToConstant: 150).isActive = true
        inputContainerV.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        
        
        
        view.addSubview(fButton)
        fButton.topAnchor.constraint(equalTo: inputContainerV.bottomAnchor, constant: 20).isActive = true
        fButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        fButton.leftAnchor.constraint(equalTo: inputContainerV.leftAnchor).isActive = true
        fButton.rightAnchor.constraint(equalTo: inputContainerV.rightAnchor).isActive = true
    }
    let nameTextf : UITextField = {
       let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Name"
        tf.backgroundColor = .white
        return tf
    }()
    let Mailtf : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Email"
        tf.backgroundColor = .white
        return tf
    }()
    let PassWordTF : UITextField = {
        let tf = UITextField()
        tf.isSecureTextEntry = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Password"
        tf.backgroundColor = .white
        return tf
        
    }()
    
    let inputContainerV: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.backgroundColor = .white
        return view
    }()
    let fButton: UIButton = {
        let ub = UIButton()
        ub.backgroundColor = UIColor(red: 81/255, green: 101/255, blue: 161/255, alpha: 1)
        ub.setTitle("Register", for: .normal)
        ub.translatesAutoresizingMaskIntoConstraints = false
        ub.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        return ub
    }()
    
    @objc func handleButton (){
        let N : String? = nameTextf.text
        let pass : String? = PassWordTF.text
        let mail :String? = Mailtf.text
    }
    
}

