//
//  RegisterController.swift
//  Pinterest
//
//  Created by Alumno IDS on 28/02/19.
//  Copyright © 2019 Alumno. All rights reserved.
//
import UIKit
import Foundation

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
    let Continue: UIButton = {
        let cont1 = UIButton()
        cont1.backgroundColor = UIColor(red:189/255,green:8/255,blue:28/255,alpha:1)
        cont1.setTitle("Continuar", for: .normal)
        cont1.translatesAutoresizingMaskIntoConstraints=false
        //cont1.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        return cont1
    }()
    let TF : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Enter email adress "
        tf.backgroundColor = .white
        return tf
    }()
    let Label : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Email"
        return lb
    }()
}
