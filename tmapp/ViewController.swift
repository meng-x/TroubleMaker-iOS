//
//  ViewController.swift
//  tmapp
//
//  Created by TM on 2017/01/05.
//  Copyright © 2017年 TroubleMaker, Inc. All rights reserved.
//

import UIKit
import RQShineLabel
import Material

class ViewController: UIViewController {

    
    @IBOutlet weak var shineLabel: RQShineLabel!
    var textArray: [String]
    var imgArray: [String]
    var textIndex: Int
    
    @IBOutlet weak var findATM: UILabel!
    @IBOutlet weak var qrBtn: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var beBold: UILabel!
    @IBOutlet weak var wallpaper1: UIImageView!
    @IBOutlet weak var wallpaper2: UIImageView!
    
    @IBOutlet weak var seeTMDev: FlatButton!
    
    required init?(coder aDecoder: NSCoder) {
        textArray = ["TM is a bold way to show yourself. Perfectly suitable for developers/designers/coaches. Let people find your profile by providing them a QRCode.",
                     "Super individual\n\nPlug and play, robust, self-managing, self-branding, self-financing, cooperate with society like a company.",
                     "“Here's to the crazy ones. The misfits. The rebels. The troublemakers. The round pegs in the square holes. The ones who see things differently. They're not fond of rules. And they have no respect for the status quo.”"]
        imgArray = ["wallpaper1", "wallpaper2", "wallpaper3"]
        textIndex = 0
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        qrBtn.layer.shadowRadius = 3
        qrBtn.layer.shadowOpacity = 0.4
        qrBtn.layer.shadowColor = UIColor.black.cgColor;
        qrBtn.layer.shadowOffset = CGSize.init(width: 0, height: 1)
        
        findATM.layer.shadowColor = UIColor.black.cgColor;
        
        beBold.layer.shadowColor = UIColor.black.cgColor;
        beBold.layer.shadowOffset = CGSize.init(width: 0, height: 1)
        
        seeTMDev.layer.shadowColor = UIColor.black.cgColor;
        seeTMDev.layer.shadowOffset = CGSize.init(width: 0, height: 1)
        
        logo.layer.shadowColor = UIColor.black.cgColor;
        logo.layer.shadowOffset = CGSize.init(width: 0, height: 1)
        
        shineLabel.layer.shadowColor = UIColor.black.cgColor;
        shineLabel.layer.shadowOffset = CGSize.init(width: 0, height: 1)
        
        shineLabel.numberOfLines = 0;
        shineLabel.text = textArray[textIndex]
        shineLabel.sizeToFit()
        shineLabel.center = self.view.center;
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        shineTheLabel()
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        shineTheLabel()
//    }
    
    func shineTheLabel(){
        if self.shineLabel.isVisible {
            self.shineLabel.fadeOut(completion: {
                self.changeText()
                UIView.animate(withDuration: 2.5, animations: {
                    if self.wallpaper1.alpha > 0.1 {
                        self.wallpaper1.alpha = 0
                        self.wallpaper2.image = UIImage(named: self.imgArray[self.textIndex % self.imgArray.count])
                        self.wallpaper2.alpha = 1
                    } else {
                        self.wallpaper1.image = UIImage(named: self.imgArray[self.textIndex % self.imgArray.count])
                        self.wallpaper1.alpha = 1
                        self.wallpaper2.alpha = 0
                        
                    }
                    
                })
                self.shineLabel.shine(completion: {
                    let deadlineTime = DispatchTime.now() + .seconds(3)
                    DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                        self.shineTheLabel()
                    }
                })
                
            })
        } else {
            self.shineLabel.shine(completion: {
                let deadlineTime = DispatchTime.now() + .seconds(3)
                DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                    self.shineTheLabel()
                }
            })
            
        }
    }
    
    func changeText() {
        self.textIndex += 1
        self.shineLabel.text = self.textArray[self.textIndex % self.textArray.count]
    }

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}

