import Foundation
import SpriteKit

class GameScene: SKScene {
    weak var gameDelegate: GameDelegate?
    
    private var scenario = SKSpriteNode(imageNamed: "ScenarioDefault")
    private var personagem = SKSpriteNode(imageNamed: "PersonagemDefault")
    private var socks = SKSpriteNode(imageNamed: "SocksDisabled")
    private var window = SKSpriteNode(imageNamed: "WindowDisabledClosed")
    private var mug = SKSpriteNode(imageNamed: "MugDisabled")
    private var food = SKSpriteNode(imageNamed: "FoodDisabled")
    private var lamp = SKSpriteNode(imageNamed: "LampDisabled")
    private var celphone = SKSpriteNode(imageNamed: "CelphoneDisabled")
    private var incense = SKSpriteNode(imageNamed: "IncenseDisabled")
    private var mobileLeft = SKSpriteNode(imageNamed: "MobileDisabled")
    private var mobileRight = SKSpriteNode(imageNamed: "MobileDisabled")
    private var shelf = SKSpriteNode(imageNamed: "ShelfDisabled")
    
    
    override func didMove(to view: SKView) {
        setupScenario()
        setupPersonagem()
        setupSocks()
        setupWindow()
        setupMug()
        setupFood()
        setupLamp()
        setupCelphone()
        setupIncense()
        setupMobile()
        setupShelf()
        
        self.anchorPoint = CGPoint(x: 0, y: 1)
    }
    
    private func setupScenario() {
        scenario.anchorPoint = CGPoint(x: 0, y: 1)
        scenario.position = CGPoint(x: 70, y: -200)
        scenario.setScale(1.0)
        addChild(scenario)
    }
    
    private func setupPersonagem() {
        personagem.anchorPoint = CGPoint(x: 0, y: 1)
        personagem.position = CGPoint(x: 70, y: -200)
        personagem.setScale(1.0)
        addChild(personagem)
                
    }
    
    private func setupSocks() {
        socks.anchorPoint = CGPoint(x: 0, y: 1)
        socks.position = CGPoint(x: 709, y: -428)
        socks.setScale(1.0)
        addChild(socks)
                
    }
    
    private func setupWindow() {
        window.anchorPoint = CGPoint(x: 0, y: 1)
        window.position = CGPoint(x: 72, y: -27)
        window.setScale(1.0)
        addChild(window)
                
    }
    
    private func setupMug() {
        mug.anchorPoint = CGPoint(x: 0, y: 1)
        mug.position = CGPoint(x: 599, y: -404)
        mug.setScale(1.0)
        addChild(mug)
                
    }
    
    private func setupFood() {
        food.anchorPoint = CGPoint(x: 0, y: 1)
        food.position = CGPoint(x: 340, y: -246)
        food.setScale(1.0)
        addChild(food)
                
    }
    
    private func setupLamp() {
        lamp.anchorPoint = CGPoint(x: 0, y: 1)
        lamp.position = CGPoint(x: 584, y: -244)
        lamp.setScale(1.0)
        addChild(lamp)
                
    }
    
    private func setupCelphone() {
        celphone.anchorPoint = CGPoint(x: 0, y: 1)
        celphone.position = CGPoint(x: 294, y: -233)
        celphone.setScale(1.0)
        addChild(celphone)
                
    }
    
    private func setupIncense() {
        incense.anchorPoint = CGPoint(x: 0, y: 1)
        incense.position = CGPoint(x: 547, y: -100)
        incense.setScale(1.0)
        addChild(incense)
                
    }
    
    private func setupMobile() {
        mobileLeft.anchorPoint = CGPoint(x: 0, y: 1)
        mobileLeft.position = CGPoint(x: 585, y: -390)
        mobileLeft.setScale(1.0)
        addChild(mobileLeft)
        
        mobileRight.anchorPoint = CGPoint(x: 0, y: 1)
        mobileRight.position = CGPoint(x: 25, y: -390)
        mobileRight.setScale(1.0)
        addChild(mobileRight)
                
    }
    
    private func setupShelf() {
        shelf.anchorPoint = CGPoint(x: 0, y: 1)
        shelf.position = CGPoint(x: 690, y: -62)
        shelf.setScale(1.0)
        addChild(shelf)
                
    }
}
