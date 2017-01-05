//
//  UIBezierPath+Shapes.swift
//  tmapp
//
//  Created by TM on 2017/01/06.
//  Copyright © 2017年 TroubleMaker, Inc. All rights reserved.
//

import UIKit

extension UIBezierPath {
    class func TMShape() -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0.5, y: 5.5))
        bezierPath.addLine(to: CGPoint(x: 0.5, y: 36.5))
        bezierPath.addLine(to: CGPoint(x: 17.5, y: 36.5))
        bezierPath.addLine(to: CGPoint(x: 17.5, y: 23.5))
        bezierPath.addLine(to: CGPoint(x: 43.5, y: 23.5))
        bezierPath.addLine(to: CGPoint(x: 52.5, y: 53.5))
        bezierPath.addLine(to: CGPoint(x: 61.5, y: 23.5))
        bezierPath.addLine(to: CGPoint(x: 88.5, y: 23.5))
        bezierPath.addLine(to: CGPoint(x: 88.5, y: 36.5))
        bezierPath.addLine(to: CGPoint(x: 70.5, y: 53.5))
        bezierPath.addLine(to: CGPoint(x: 59.5, y: 87.5))
        bezierPath.addLine(to: CGPoint(x: 46.5, y: 87.5))
        bezierPath.addLine(to: CGPoint(x: 35.5, y: 53.5))
        bezierPath.addLine(to: CGPoint(x: 35.5, y: 87.5))
        bezierPath.addLine(to: CGPoint(x: 19.5, y: 87.5))
        bezierPath.addLine(to: CGPoint(x: 19.5, y: 104.5))
        bezierPath.addLine(to: CGPoint(x: 86.5, y: 104.5))
        bezierPath.addLine(to: CGPoint(x: 86.5, y: 87.5))
        bezierPath.addLine(to: CGPoint(x: 70.5, y: 87.5))
        bezierPath.addLine(to: CGPoint(x: 70.5, y: 53.5))
        bezierPath.addLine(to: CGPoint(x: 88.5, y: 36.5))
        bezierPath.addLine(to: CGPoint(x: 105.5, y: 36.5))
        bezierPath.addLine(to: CGPoint(x: 105.5, y: 6.5))
        bezierPath.addLine(to: CGPoint(x: 0.5, y: 6.5))
        bezierPath.addLine(to: CGPoint(x: 0.5, y: 5.5))
        bezierPath.close()
        
        return bezierPath
    }
}
