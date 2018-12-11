//
//  LoginViewController.swift
//  job-m
//
//  Created by Martin Llaneza on 12/2/18.
//  Copyright © 2018 edsaio. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit
import GoogleSignIn
import SVProgressHUD

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
    }

    @IBAction func facebookLogin(_ sender: Any) {
        let fbLoginManager = FBSDKLoginManager()
        fbLoginManager.logIn(withReadPermissions: ["public_profile", "email"], from: self) { (result, error) in
            if let error = error {
                print("Failed to login: \(error.localizedDescription)")
                return
            }
            
            guard let accessToken = FBSDKAccessToken.current() else {
                print("Failed to get access token")
                return
            }
            
            let credentials = FacebookAuthProvider.credential(withAccessToken: accessToken.tokenString)
            self.fireSignInAndRetrieveData(credentials)
        }
    }
    
    @IBAction func googleLogin(_ sender: Any) {
        GIDSignIn.sharedInstance().signIn()
    }
    
    func fireSignInAndRetrieveData(_ credentials: AuthCredential) {
        SVProgressHUD.show()
        Auth.auth().signInAndRetrieveData(with: credentials) { (authResult, error) in
            if let error = error {
                let alertController = UIAlertController(title: "Login Error", message: error.localizedDescription, preferredStyle: .alert)
                let okayAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(okayAction)
                self.present(alertController, animated: true, completion: nil)
                
                return
            }
            
            SVProgressHUD.dismiss()
            self.transitionToMainStoryboard()
        }
    }
    
    func transitionToMainStoryboard() {
        guard let window = UIApplication.shared.keyWindow else {
            return
        }
        
        guard let rootViewController = window.rootViewController else {
            return
        }
        
        let storyboard = AppStoryboard.Main.instance
        let controller = storyboard.instantiateViewController(withIdentifier: "RootTabBar")
        controller.view.frame = rootViewController.view.frame
        controller.view.layoutIfNeeded()
        
        UIView.transition(with: window, duration: 0.3, options: .transitionCrossDissolve, animations: {
            window.rootViewController = controller
        }, completion: nil)
    }

}

extension LoginViewController: GIDSignInDelegate, GIDSignInUIDelegate {
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let err = error {
            print("Failed to log into Google: ", err)
            return
        }

        guard let idToken = user.authentication.idToken else { return }
        guard let accessToken = user.authentication.accessToken else { return }
        
        let credentials = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: accessToken)
        
        self.fireSignInAndRetrieveData(credentials)
    }

}
