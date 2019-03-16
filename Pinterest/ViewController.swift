//
//  ViewController.swift
//  Pinterest
//
//  Created by Alumno on 31/01/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:1)

        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(logo)
        view.addSubview(ButtonMail)
        view.addSubview(ButtonFace)
        view.addSubview(ButtonGoo)
        view.addSubview(ButtonSN)
        
        ButtonMail.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 50).isActive = true
        ButtonFace.topAnchor.constraint(equalTo: ButtonMail.bottomAnchor, constant: 10 ).isActive = true
        ButtonGoo.topAnchor.constraint(equalTo: ButtonFace.bottomAnchor, constant: 10).isActive = true
        ButtonSN.topAnchor.constraint(equalTo: ButtonGoo.bottomAnchor, constant: 30 ).isActive = true
        
        ButtonMail.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ButtonFace.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ButtonGoo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ButtonSN.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        ButtonMail.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        ButtonFace.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        ButtonGoo.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        ButtonSN.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        
        ButtonMail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ButtonFace.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ButtonGoo.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ButtonSN.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    let logo : UIImageView = {
        let lg = UIImageView(frame: CGRect(x: 105, y: 150, width: 200, height: 200))
        lg.image = UIImage(named: "pinterestL.png")
        return lg
        
    }()
   
    let ButtonMail: UIButton = {
        let ub = UIButton()
        ub.backgroundColor = UIColor(red: 189/255, green: 8/255, blue: 28/255, alpha: 1)
        ub.setTitle("Register with email", for: .normal)
        ub.translatesAutoresizingMaskIntoConstraints = false
        ub.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        return ub
    }()
    let ButtonFace: UIButton = {
        let ub = UIButton()
        ub.backgroundColor = UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
        ub.setTitle("Register with Facebook", for: .normal)
        ub.translatesAutoresizingMaskIntoConstraints = false
        ub.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        return ub
    }()
    let ButtonGoo: UIButton = {
        let ub = UIButton()
        ub.backgroundColor = UIColor(red: 63/255, green: 133/255, blue: 244/255, alpha: 1)
        ub.setTitle("Register with Google", for: .normal)
        ub.translatesAutoresizingMaskIntoConstraints = false
        ub.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        return ub
    }()
    let ButtonSN: UIButton = {
        let ub = UIButton()
        ub.backgroundColor = UIColor(red: 241/255 ,green: 241/255, blue: 241/255, alpha: 1)
        ub.setTitle("Sign in", for: .normal)
        ub.setTitleColor(UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha:1), for: .normal)
        ub.translatesAutoresizingMaskIntoConstraints = false
        ub.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        return ub
    }()
    
    
    @objc func handleButton (_ sender:UIButton){
        
        switch sender {
        case ButtonMail:
            let register = RegisterController()
            register.nav = .mail
            self.navigationController?.pushViewController(register, animated: true)
        case ButtonSN:
            let SN = LogIn ()
            self.navigationController?.pushViewController(SN, animated: true)
        default: 1+2
        }
        
        }
        
        
        
    }
    


