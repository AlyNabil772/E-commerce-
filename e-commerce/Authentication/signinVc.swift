//
//  signinVc.swift
//  e-commerce
//
//  Created by ALY NABIL on 05/03/2024.
//

import UIKit

class signinVc: UIViewController {
    
    // Mark Outlets -------------------
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var signInBtn: UIButton!
    
    // Mark: - Proprties -------------------
    
    
    
    //Mark: - LifCycle Methods -----------------
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "login"
        emailView.addLayer()
        passwordView.addLayer()
        signInBtn.addLayer()

        
    }
    
    
    // Mark: - Methods -----------------------
    
    func goToTabBarScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tabBar = storyboard.instantiateViewController(withIdentifier: "tabBarVc")
        let nav = UINavigationController(rootViewController: tabBar)
        nav.modalPresentationStyle = .fullScreen
         present(nav, animated: true)
    }
    
    
//    func goToSignupScreen() {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let singupViewController = storyboard.instantiateViewController(withIdentifier: "signupVc")
//        navigationController?.pushViewController(singupViewController, animated: true)
//
//    }
    
    // Mark: - Actions ----------------------
    
    @IBAction func goToTabBarScreenBtn(_ sender: UIButton) {
        goToTabBarScreen()
      
    }
    
    @IBAction func goToSignupBtn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let singupViewController = storyboard.instantiateViewController(withIdentifier: "signupVc")
                navigationController?.pushViewController(singupViewController, animated: true)
    }
    

   
}

