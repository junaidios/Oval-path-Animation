//
//  JSCircleAnimtionView.swift
//  animation
//
//  Created by JayD on 31/03/2017.
//  Copyright © 2017 tps. All rights reserved.
//

//  Muhammad Junaid 
//  Senior Software Engineer @ Coeus-Solutions
//  Skype: junaid.ios
//  Email: junaidsidhu@gmail.com

import UIKit

let colorLine = UIColor.black;

let colorCircleLayer1 = UIColor.red;
let colorCircleLayer2 = UIColor.green;
let colorCircleLayer3 = UIColor.blue;

let colorCircleLayerCenter = UIColor.gray;

class JSCircleAnimtionView : UIView{
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open func draw(_ rect: CGRect) {
        
        let centerCirclePath = UIBezierPath(ovalIn: CGRect(x: 162, y: 188, width: 20, height: 20))
        colorCircleLayerCenter.setFill()
        centerCirclePath.fill()
        
        let bezierPath1 = UIBezierPath()
        bezierPath1.move(to: CGPoint(x: 145.5, y: 213.93))
        bezierPath1.addCurve(to: CGPoint(x: 84.68, y: 131.46), controlPoint1: CGPoint(x: 83.75, y: 163.11), controlPoint2: CGPoint(x: 79.26, y: 136.87))
        bezierPath1.addCurve(to: CGPoint(x: 193.5, y: 178.49), controlPoint1: CGPoint(x: 87.4, y: 128.75), controlPoint2: CGPoint(x: 130.21, y: 128.39))
        bezierPath1.addCurve(to: CGPoint(x: 258.01, y: 269.86), controlPoint1: CGPoint(x: 256.33, y: 228.23), controlPoint2: CGPoint(x: 262.32, y: 266.63))
        bezierPath1.addCurve(to: CGPoint(x: 145.5, y: 213.93), controlPoint1: CGPoint(x: 249.34, y: 276.35), controlPoint2: CGPoint(x: 207.25, y: 264.75))
        bezierPath1.close()
        
        let bezierPath2 = UIBezierPath()
        bezierPath2.move(to: CGPoint(x: 145.5, y: 184.8))
        bezierPath2.addCurve(to: CGPoint(x: 254.5, y: 131.5), controlPoint1: CGPoint(x: 195.5, y: 146.16), controlPoint2: CGPoint(x: 238.27, y: 131.5))
        bezierPath2.addCurve(to: CGPoint(x: 200.5, y: 217.47), controlPoint1: CGPoint(x: 262.64, y: 131.5), controlPoint2: CGPoint(x: 261.5, y: 159.92))
        bezierPath2.addCurve(to: CGPoint(x: 84.5, y: 272.49), controlPoint1: CGPoint(x: 139.94, y: 274.6), controlPoint2: CGPoint(x: 91.01, y: 272.49))
        bezierPath2.addCurve(to: CGPoint(x: 145.5, y: 184.8), controlPoint1: CGPoint(x: 71.42, y: 272.49), controlPoint2: CGPoint(x: 95.5, y: 223.44))
        bezierPath2.close()
        
        let bezierPath3 = UIBezierPath()
        bezierPath3.move(to: CGPoint(x: 143.5, y: 201.45))
        bezierPath3.addCurve(to: CGPoint(x: 172, y: 89.5), controlPoint1: CGPoint(x: 143.5, y: 154.31), controlPoint2: CGPoint(x: 155.77, y: 89.5))
        bezierPath3.addCurve(to: CGPoint(x: 200.5, y: 201.45), controlPoint1: CGPoint(x: 180.14, y: 89.5), controlPoint2: CGPoint(x: 200.5, y: 124.29))
        bezierPath3.addCurve(to: CGPoint(x: 172, y: 307.5), controlPoint1: CGPoint(x: 200.5, y: 278.04), controlPoint2: CGPoint(x: 178.51, y: 307.5))
        bezierPath3.addCurve(to: CGPoint(x: 143.5, y: 201.45), controlPoint1: CGPoint(x: 158.92, y: 307.5), controlPoint2: CGPoint(x: 143.5, y: 248.58))
        bezierPath3.close()
        
        let linLayer1 = CAShapeLayer()
        linLayer1.path = bezierPath1.cgPath;
        linLayer1.strokeColor = colorLine.cgColor
        linLayer1.fillColor = UIColor.clear.cgColor
        
        self.layer.addSublayer(linLayer1);
        
        let lineLayer2 = CAShapeLayer()
        lineLayer2.path = bezierPath2.cgPath;
        lineLayer2.strokeColor = colorLine.cgColor
        lineLayer2.fillColor = UIColor.clear.cgColor
        
        self.layer.addSublayer(lineLayer2);
        
        let lineLayer3 = CAShapeLayer()
        lineLayer3.path = bezierPath3.cgPath;
        lineLayer3.strokeColor = colorLine.cgColor
        lineLayer3.fillColor = UIColor.clear.cgColor
        
        self.layer.addSublayer(lineLayer3);
        
        
        let circleLayer1 = CAShapeLayer()
        circleLayer1.path = UIBezierPath(ovalIn: CGRect(x: -10, y: -10, width: 20, height: 20)).cgPath;
        circleLayer1.fillColor = colorCircleLayer1.cgColor
        
        let circleLayer2 = CAShapeLayer()
        circleLayer2.path = UIBezierPath(ovalIn: CGRect(x: -10, y: -10, width: 20, height: 20)).cgPath;
        circleLayer2.fillColor = colorCircleLayer2.cgColor
        
        let circleLayer3 = CAShapeLayer()
        circleLayer3.path = UIBezierPath(ovalIn: CGRect(x: -10, y: -10, width: 20, height: 20)).cgPath;
        circleLayer3.fillColor = colorCircleLayer3.cgColor
        
        self.layer.addSublayer(circleLayer1);
        self.layer.addSublayer(circleLayer2);
        self.layer.addSublayer(circleLayer3);
        
        circleLayer1.add(self.addAnimation(ovalPath: bezierPath1), forKey: "1");
        circleLayer2.add(self.addAnimation(ovalPath: bezierPath2), forKey: "2");
        circleLayer3.add(self.addAnimation(ovalPath: bezierPath3), forKey: "3");
    }
    
    
    func addAnimation(ovalPath : UIBezierPath) -> CAKeyframeAnimation {
        
        let animation = CAKeyframeAnimation()
        
        animation.keyPath = "position"
        animation.repeatCount = HUGE
        animation.timingFunction = CAMediaTimingFunction.init(name: kCAMediaTimingFunctionLinear);
        animation.fillMode = kCAFillModeForwards;
        animation.repeatCount = .infinity
        animation.beginTime = 0.0
        animation.duration = 2.5
        animation.calculationMode = kCAAnimationPaced
        
        animation.path = ovalPath.cgPath
        
        return animation;
    }
}
