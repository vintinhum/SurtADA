//
//  GameViewController.swift
//  Cookie Animation
//
//  Created by Vítor Bárrios Luís de Albuquerque on 31/08/20.
//  Copyright © 2020 Vítor Bárrios Luís de Albuquerque. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewWillLayoutSubviews() {
            super.viewWillLayoutSubviews()
    //        let menuScene = MenuScene()
    //        let skView = self.view as! SKView
    //        skView.ignoresSiblingOrder = true
    //        menuScene.size = view.bounds.size
    //        skView.presentScene(menuScene)
            
        }
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            let telaInicialScene = TelaInicialScene()
            let skView = self.view as! SKView
            skView.ignoresSiblingOrder = true
            telaInicialScene.size = view.bounds.size
            skView.presentScene(telaInicialScene)
        }
    

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
