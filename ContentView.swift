import SwiftUI

struct ContentView: View {
    @State var selectedPage: Pages = .about
    
    var body: some View {
        NavigationSplitView {
            SideMenuView(selectedPage: $selectedPage)
        } detail: {
            switch selectedPage {
            case .about:
                Text("About")
            case .arcade:
                Text("Melody")
                
            default :
                TutorialView(sense: Sense.senses[selectedPage]!)
            
                
            }
            
//            TutorialView(senses: SensesTutorial(name: , color: , image: , text: ))
        }
    }
}
