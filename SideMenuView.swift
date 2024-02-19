import SwiftUI

struct SideMenuView: View {
    @Binding var selectedPage: Pages
    
    var body: some View {
        VStack (alignment: .leading){
            aboutView()
            Spacer()
            practiceView()
            Spacer()
            arcadeView()
        }
        .frame(maxWidth: .infinity)
        .background(Color ("grayBackground"))
    }
    
    func aboutView() -> some View {
       
        return HStack {
            Image("badenHead")
            Text("About")
                .font(.caveatTitle)
                .foregroundColor(.white)
        }
    }
    
    func practiceView() -> some View {
        return VStack (alignment: .leading, spacing: 8){
            Text ("Practice")
                .font(.caveatT1)
                .foregroundColor(.white)
            
            ForEach(Array(Sense.senses.keys), id: \.self) { p in
                let sense = Sense.senses[p]!
                practiceCell(image: sense.icon, text: sense.name)
                    .onTapGesture {
                        selectedPage = p
                    }
            }
        }
      
    }
    
    func practiceCell(image: String, text: String) -> some View {
        return HStack {
            Image(image)
            Text(text)
                .foregroundColor(.white)
                .font(.custom("CaveatBrush-Regular", size: 48))
                .padding(.horizontal, 8)
        }
    }
    
    func arcadeView() -> some View {
    
        return Text("Arcade")
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(selectedPage: .constant(.about))
    }
}
