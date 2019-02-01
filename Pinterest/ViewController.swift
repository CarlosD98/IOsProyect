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
        
        inputContainerV.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerV.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerV.heightAnchor.constraint(equalToConstant: 150)
        inputContainerV.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        
        
        view.addSubview(fButton)
        fButton.topAnchor.constraint(equalTo: inputContainerV.bottomAnchor, constant: 20)
        fButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        fButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
    }
    let nameTextf : UITextField = {
       let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Name"
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
        return ub
    }()
    
}

