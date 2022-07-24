//
//  ViewController.swift
//  FirstApplication
//
//  Created by Deepam Sharma on 24/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlet
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var labelTadaa: UILabel!
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialUi()
    }
    
    // MARK: - Custom Function
    
    // UI Which is shown Initially
    func initialUi() {
        view1.setCornerRadius()
        view2.setCornerRadius()
        view3.setCornerRadius()
        view4.setCornerRadius()
        view5.setCornerRadius()
        view6.setCornerRadius()
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.view1.isHidden = false
            self.view1.transform = CGAffineTransform.identity.scaledBy(x: 2, y: 2)
            
        }) { (finished) in
            UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn) {
                self.view2.isHidden = false
                self.view2.transform = CGAffineTransform.identity.scaledBy(x: 2, y: 2)
            } completion: { _ in
                UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn) {
                    self.view3.isHidden = false
                    self.view3.transform = CGAffineTransform.identity.scaledBy(x: 2, y: 2)
                } completion: { _ in
                    UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn) {
                        self.view6.isHidden = false
                        self.view6.transform = CGAffineTransform.identity.scaledBy(x: 2, y: 2)
                    } completion: { _ in
                        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn) {
                            self.view4.isHidden = false
                            self.view4.transform = CGAffineTransform.identity.scaledBy(x: 2, y: 2)
                        } completion: { _ in
                            UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn) {
                                self.view5.isHidden = false
                                self.view5.transform = CGAffineTransform.identity.scaledBy(x: 2, y: 2)
                            } completion: { _ in
                                self.labelTadaa.isHidden = false
                            }
                        }
                    }
                }
            }
        }
    }
}

