//
//  signupVc.swift
//  e-commerce
//
//  Created by ALY NABIL on 15/03/2024.
//

import UIKit

class signupVc: UIViewController {
    
    // Mark: - Outlets
    
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var nameTextFeild: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var emailTextFeild: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var passwordTextFeild: UITextField!
    @IBOutlet weak var signupBtn: UIButton!
    
    
    //Mark Proprties
    
    
    
    //Mark: - Lifcycle Methods
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "signup"
        nameView.addLayer()
        emailView.addLayer()
        passwordView.addLayer()
        signupBtn.addLayer()

    }
}
