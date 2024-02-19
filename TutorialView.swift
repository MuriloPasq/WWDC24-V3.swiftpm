import SwiftUI

struct TutorialView: View {
    
    let sense: Sense
    @State private var isAnimating: Bool = false

    var body: some View {
        
        
        ZStack {
            HStack{
                VStack(alignment: .leading) {
                    Text(sense.name)
                        .font(.caveatT1)
                    HStack{
                        Text(sense.tutorialtText)
                            .font(.robotoT2)
                        Spacer()
                    }
                    Button {
                        // Action for the button
                    } label: {
                        HStack {
                            NavigationLink {
                                GameView(sense: sense)
                            } label: {
                                Text("Let's practice")
                                    .font(.caveatTitle)
                                Image(systemName: "chevron.right")
                            }
                        }
                        .scaleEffect(isAnimating ? 1.0 : 0.6)

                    }
                   

                    Spacer()
                }
                .padding(.horizontal, 112)
                .padding(.vertical, 32)
                .frame(width: 800)
                Spacer()
            }
            .zIndex(1)
            
            GeometryReader { g in
                VStack(alignment: .trailing) {
                    Spacer()
                    HStack(alignment: .bottom){
                        Spacer()
                        
                        let ratio = g.size.width/UIScreen.current!.bounds.width
                        Image(sense.image)
                            .zIndex(0)
                            .scaleEffect(ratio)
                            .offset(x:ratio<0.99 ? 170 : 80, y:ratio<0.99 ? 180 : 100)

                    }
                }
            }
        }
        .onAppear {
            withAnimation(.bouncy(duration: 0.5).repeatForever(autoreverses: true)) {
                        isAnimating = true
                        }
                    }
        .background(
            Color(uiColor : UIColor(named: sense.color) ?? .red)
        )
        
    }
    
    struct TutorialView_Previews: PreviewProvider {
        static var previews: some View {
            TutorialView(sense: Sense.senses[.melody]!)
        }
    }
}
