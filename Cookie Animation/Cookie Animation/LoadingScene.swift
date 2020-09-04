//
//  LoadingScene.swift
//  Cookie Animation
//
//  Created by Ravena Amaral on 03/09/20.
//  Copyright © 2020 Vítor Bárrios Luís de Albuquerque. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit


class IMProgressBar : SKNode{

var emptySprite : SKSpriteNode? = nil
var progressBar : SKCropNode
init(emptyImageName: String!,filledImageName : String)
{
    progressBar = SKCropNode()
    super.init()
    let filledImage  = SKSpriteNode(imageNamed: filledImageName)
    progressBar.addChild(filledImage)
    progressBar.maskNode = SKSpriteNode(color: .white,
        size: CGSize(width: filledImage.size.width * 2, height: filledImage.size.height * 2))

    progressBar.maskNode?.position = CGPoint(x: -filledImage.size.width / 2,y: -filledImage.size.height / 2)
    progressBar.zPosition = 0.1
    self.addChild(progressBar)

    if emptyImageName != nil{
        emptySprite = SKSpriteNode.init(imageNamed: emptyImageName)
        self.addChild(emptySprite!)
    }
}
func setXProgress(xProgress : CGFloat){
    var value = xProgress
    if xProgress < 0{
        value = 0
    }
    if xProgress > 1 {
        value = 1
    }
    progressBar.maskNode?.xScale = value
}

func setYProgress(yProgress : CGFloat){
    var value = yProgress
    if yProgress < 0{
        value = 0
    }
    if yProgress > 1 {
        value = 1
    }
    progressBar.maskNode?.yScale = value
}
required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}






//class LoadingScene:SKScene {
//
//    // MARK: - Private class properties
//    private var timer = Timer()
//
//    override func didMove(to view: SKView) {
//        // Background
//        self.backgroundColor = SKColor.white
//
//        self.setup()
//
//        self.fireTimer()
//
//        self.preloadAssets(completion: {
//            self.run(SKAction.wait(forDuration: 2.0), completion: {
//                self.loadGameScene()
//            })
//        })
//    }
//
//    private func setup() {
//        // Do setup for the Loading Scene
//    }
//
//    private func fireTimer() {
//        self.timer = Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(LoadingScene.animateLoadingBar), userInfo: nil, repeats: true)
//    }
//
//    @objc func animateLoadingBar() {
//        // "Clamp" the xScale to not exceed 100% (1.0)
//        if (self.loadingBar.xScale + 0.125) <= 1.0 {
//            self.loadingBar.xScale += 0.125
//
//        }
//    }
//
//
//    private func preloadAssets(completion completion: (() -> Void)!) {
//        // Load your assets
//
//        completion()
//    }
//
//    private func loadGameScene() {
//        let scene = GameScene(size: SksViewSize)
//
//        let transition = SKTransition.fade(with: SKColor.white, duration: 0.25)
//
//        self.view?.presentScene(scene, transition: transition)
//    }
//
//
//    deinit {
//        self.timer.invalidate()
//    }
}
