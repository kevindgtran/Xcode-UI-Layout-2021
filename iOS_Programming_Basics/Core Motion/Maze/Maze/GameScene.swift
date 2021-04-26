//
//  GameScene.swift
//  Maze
//
//  Created by Kevin Tran on 6/3/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import SpriteKit
import GameplayKit
import CoreMotion //coremotion retrieves information from Accelerometer events other and motion events

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    //create new instance of CMMotion - gateway to the motion services such as accelerometer, rotation and other device-motion data
    let manager = CMMotionManager()
    
    //create SKSpriteNode instance called player
    var player = SKSpriteNode()
    
    //create SKSpriteNode end node
    var endNode = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        
        //winner.isHidden = true
        
        //connect delegate to scene
        self.physicsWorld.contactDelegate = self
        
        //connect node with player
        player = self.childNode(withName: "player") as! SKSpriteNode
        
        endNode = self.childNode(withName: "end") as! SKSpriteNode
        
        //upon load, immediately start accelerometer
        manager.startAccelerometerUpdates()
        
        //create motion detection interval at 1/10 of a second
        manager.accelerometerUpdateInterval = 0.1
        
        //
        manager.startAccelerometerUpdates(to: OperationQueue.main){(data, error) in
            
            self.physicsWorld.gravity = CGVector.init(dx: CGFloat((data?.acceleration.x)!) * 10, dy: CGFloat((data?.acceleration.y)!) * 10)
        }
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        var bodyA = contact.bodyA
        var bodyB = contact.bodyB
        
        //check if player and end node collide
        if bodyA.categoryBitMask == 1 && bodyB.categoryBitMask == 2 || bodyA.categoryBitMask == 2 && bodyB.categoryBitMask == 1 {
            
            //Won!
            print("winner!")
            
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
