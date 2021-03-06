//
//  TelaInicial.swift
//  Cookie Animation
//
//  Created by Ravena Amaral on 01/09/20.
//  Copyright © 2020 Vítor Bárrios Luís de Albuquerque. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit
import GameKit

class TelaInicialScene: SKScene {
    let telaInicialScene = SKScene(size: CGSize(width: 896, height: 414))
    
    
    let backgroundImageW = SKSpriteNode(imageNamed: "WelcomeImage")
    let okButton = SKSpriteNode()
    let okText = SKLabelNode(fontNamed: "SF Compact Display")
    let animation = SKVideoNode(fileNamed:"SurtoVideo.mp4")
    
    
    override func didMove(to view: SKView) {
        
        self.backgroundColor = .white
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        animation.position = CGPoint(x: 0, y: 30)
        animation.size = CGSize(width: 896, height: 417)
        self.addChild(animation)
        animation.play()
        okButton.isHidden = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 12){
            self.okButton.isHidden = false
        }
        
        
        okButton.run(SKAction.setTexture(SKTexture.init(imageNamed: "BotaoCoitoSorte.png")))
        okButton.name = "OkBtn"
        okButton.size = CGSize(width: 180, height: 130)
        okButton.zPosition = 0
        okButton.position = CGPoint(x: 0, y: -130)
        self.addChild(okButton)
        
//        okText.text = "OK"
//        okText.fontColor = UIColor.black
//        okText.verticalAlignmentMode = .center
//        okText.position = CGPoint(x: 0, y: 0)
//        okText.fontSize = 25
//        okText.name = "OkBtn"
//        okText.zPosition = 1
//        okButton.addChild(okText)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches){
            let location = touch.location(in: self)
            let nodeTouched = atPoint(location)
            if nodeTouched.name == "OkBtn"{
                self.view?.presentScene(GameScene(size: self.size))
                //changeScene()
                
            }
        }
        
        
    }
}


