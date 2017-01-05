//
//  ViewController.swift
//  tmapp
//
//  Created by TM on 2017/01/05.
//  Copyright © 2017年 TroubleMaker, Inc. All rights reserved.
//

import UIKit
import RQShineLabel

class ViewController: UIViewController {

    
    @IBOutlet weak var shineLabel: RQShineLabel!
    var textArray: [String]
    var textIndex: Int
    
    @IBOutlet weak var wallpaper1: UIImageView!
    @IBOutlet weak var wallpaper2: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        textArray = ["For something this complicated, it’s really hard to design products by focus groups. A lot of times, people don’t know what they want until you show it to them.",
                     "We’re just enthusiastic about what we do.",
                     "We made the buttons on the screen look so good you’ll want to lick them."]
        textIndex = 0
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shineLabel.numberOfLines = 0;
        shineLabel.text = textArray[textIndex]
        shineLabel.sizeToFit()
        shineLabel.center = self.view.center;
    }
    
    func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.shineLabel.shine()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if self.shineLabel.isVisible {
            self.shineLabel.fadeOut(completion: {
                self.changeText()
                UIView.animate(withDuration: 2.5, animations: {
                    if self.wallpaper1.alpha > 0.1 {
                        self.wallpaper1.alpha = 0
                        self.wallpaper2.alpha = 1
                    } else {
                        self.wallpaper1.alpha = 1
                        self.wallpaper2.alpha = 0
                        
                    }
                    
                })
                self.shineLabel.shine()
                
            })
        } else {
            self.shineLabel.shine()
            
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

