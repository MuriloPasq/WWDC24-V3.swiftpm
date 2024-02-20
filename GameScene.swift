import Foundation
import SpriteKit

class GameScene: SKScene {
    weak var gameDelegate: GameDelegate?
    
    private var scenario: SKSpriteNode?
    private var personage: SKSpriteNode?
    private var socks: SKSpriteNode?
    private var window: SKSpriteNode?
    private var mug: SKSpriteNode?
    private var food: SKSpriteNode?
    private var lamp: SKSpriteNode?
    private var celphone: SKSpriteNode?
    private var incense: SKSpriteNode?
    private var mobile: SKSpriteNode?
    private var shelf: SKSpriteNode?
    
    

    override func didMove(to view: SKView) {
        setupScenario()
        setupPersonage()
        setupSocks()
        setupWindow()
        setupMug()
        setupFood()
        setupLamp()
        setupCelphone()
        setupIncense()
        setupMobile()
        setupShelf()
    }
    
    private func setupScenario() {
        guard let scenario = SKSpriteNode(fileNamed: "ScenarioDefault") else { return }
        self.scenario = scenario
        addChild(scenario)
    }
    
    private func setupPersonage() {
        guard let personage = SKSpriteNode(fileNamed: "PersonageDefault") else { return }
        self.personage = personage
        addChild(personage)
                
    }
    
    private func setupSocks() {
        guard let socks = SKSpriteNode(fileNamed: "SocksDefault") else { return }
        self.socks = socks
        addChild(socks)
                
    }
    
    private func setupWindow() {
        guard let window = SKSpriteNode(fileNamed: "WindowDefault") else { return }
        self.window = window
        addChild(window)
                
    }
    
    private func setupMug() {
        guard let mug = SKSpriteNode(fileNamed: "MugDefault") else { return }
        self.mug = mug
        addChild(mug)
                
    }
    
    private func setupFood() {
        guard let food = SKSpriteNode(fileNamed: "FoodDefault") else { return }
        self.food = food
        addChild(food)
                
    }
    
    private func setupLamp() {
        guard let lamp = SKSpriteNode(fileNamed: "LampDefault") else { return }
        self.lamp = lamp
        addChild(lamp)
                
    }
    
    private func setupCelphone() {
        guard let celphone = SKSpriteNode(fileNamed: "CelphoneDefault") else { return }
        self.celphone = celphone
        addChild(celphone)
                
    }
    
    private func setupIncense() {
        guard let incense = SKSpriteNode(fileNamed: "IncenseDefault") else { return }
        self.incense = incense
        addChild(incense)
                
    }
    
    private func setupMobile() {
        guard let mobile = SKSpriteNode(fileNamed: "MobileDefault") else { return }
        self.mobile = mobile
        addChild(mobile)
                
    }
    
    private func setupShelf() {
        guard let shelf = SKSpriteNode(fileNamed: "ShelfDefault") else { return }
        self.shelf = shelf
        addChild(shelf)
                
    }
}
