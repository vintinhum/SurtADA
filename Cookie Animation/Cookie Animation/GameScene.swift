//
//  GameScene.swift
//  Cookie Animation
//
//  Created by Vítor Bárrios Luís de Albuquerque on 31/08/20.
//  Copyright © 2020 Vítor Bárrios Luís de Albuquerque. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var cookieSprite = SKSpriteNode()
    var progressBar = IMProgressBar(emptyImageName: "BotaoCoitoSorte.png", filledImageName: "BotaoCoitoSorte.png")
    var textureAtlas = SKTextureAtlas()
    var textureArray = [SKTexture]()
    var labelLoading = SKLabelNode()
    
    override func didMove(to view: SKView) {
        
        textureAtlas = SKTextureAtlas(named: "images")
            
            NSLog("\(textureAtlas.textureNames)")
            
            for i in 1...textureAtlas.textureNames.count {
            
            var name = "Ativo_\(i).png"
            textureArray.append(SKTexture(imageNamed: name))
            }
            
            cookieSprite = SKSpriteNode(imageNamed: textureAtlas.textureNames[2] as! String)
            
            cookieSprite.size = CGSize(width: 398, height: 398)
            cookieSprite.position = CGPoint(x: -25, y: 0)
            self.addChild(cookieSprite)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        cookieSprite.run(SKAction.animate(with: textureArray, timePerFrame: 0.1)){
            self.scene?.addChild(self.progressBar)
            self.scene?.addChild(self.labelLoading)
            
            
        }
        
        //
       //let iMProgressBar = IMProgressBar()
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
