import SwiftUI
import SpriteKit

struct GameView: View {
    let sense: Sense
    
    @State var personagem : Personagem = .awake
    @StateObject var delegate = GameDelegate()
    
    var scene : GameScene {
        let s = GameScene()
        s.scaleMode = .aspectFill
        s.gameDelegate = delegate
        return s
    }
    
    var body: some View {
        
        ZStack{
            Image("scenarioNormal")
                .resizable()
                .scaledToFit()
            SpriteView(scene: scene)
        }
        .frame(maxWidth: UIScreen.current?.bounds.width, maxHeight: UIScreen.current?.bounds.height)
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


//
//    @State var objects = Object
//    
//    @State private var dragOffsets: [CGSize] = Array(repeating: .zero, count: 4)
//    @State private var positions: [CGPoint] = Array(repeating: .zero, count: 4)
//    
//    @State var collision = false
//    
//    @State var oiFrame = CGRect()
//    
//    let gridItems = [GridItem(), GridItem(), GridItem()]
//    var body: some View {
//                
//                VStack {
//                    LazyVGrid(columns: gridItems) {
//                        ForEach(Array(objects.enumerated()), id: \.offset) { index, object in
//                                
//                                let xOffset = dragOffsets[index].width
//                                let yOffset = dragOffsets[index].height
//                                
//                                Text(object.title)
//                                    .padding()
//                                    .offset(x: xOffset,
//                                            y: yOffset)
//                                    .gesture(DragGesture()
//                                        .onChanged { value in
//                                            dragOffsets[index] = value.translation
//                                            checkCollision(index: index)
//                                        }
//                                    )
//                                    .overlay(AbsolutePositionReader(id: "\(index)"))
//                        }
//                    }
//                    
//                    VStack{
//                        Text("oi")
//                    }
//                    .frame(width: 100, height: 100)
//                    .overlay(AbsolutePositionReader(id: "oi"))
//                    .background(collision ? .red: .blue)
//                }
//                
//            }.frame(maxWidth: .infinity, maxHeight: .infinity)
//            .coordinateSpace(name: "AbsolutePositionReader")
//            .onPreferenceChange(AbsolutePositionKey.self, perform: { value in
//                for v in value {
//                    if let i = Int(v.id) {
//                        positions[i] = v.absolutePosition
//                    }
//                    if v.id == "oi" {
//                        oiFrame = CGRect(x: v.absolutePosition.x, y: v.absolutePosition.y, width: 100, height: 100)
//                    }
//                }
//            })
//        }
//        
//        private func checkCollision(index: Int) {
//            let objectFrame = CGRect(
//                x: positions[index].x + dragOffsets[index].width,
//                y: positions[index].y + dragOffsets[index].height,
//                width: 10,
//                height: 10
//            )
//            
//            print("oi frame x: \(oiFrame.minX) y: \(oiFrame.minY)")
//            print(oiFrame)
//            print("objectFrame x: \(objectFrame.minX) y: \(objectFrame.minY)")
//            
//            if objectFrame.intersects(oiFrame) {
//                collision = true
//            }
//        }
//    
