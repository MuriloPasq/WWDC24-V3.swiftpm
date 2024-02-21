import SwiftUI
import SpriteKit

struct GameView: View {
    let sense: Sense
    
    @State var personagem : Personagem = .awake
    @StateObject var delegate = GameDelegate()
    
    var scene : GameScene {
        let s = GameScene()
        s.size = CGSize(width: 1194, height: 834)
        s.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        s.scaleMode = .aspectFit
        s.gameDelegate = delegate
        return s
    }
    
    var body: some View {
        
        ZStack{
            SpriteView(scene: scene)
                .background(.white)
        }
        .edgesIgnoringSafeArea(.all)
    }
    enum Personagem : String {
        case awake
        case drinking
        case scared
        case reading
        case sleeping
        case troubled
    }
}
