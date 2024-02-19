//import SwiftUI
//import AVFoundation
//
//struct PlayerView: View {
//    let songName: String
//    @ObservedObject var audioManager = AudioManager()
//    
//    var body: some View {
//        VStack {
//            
//            Image(systemName: "music.note")
//                .resizable()
//                .foregroundStyle(.white)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 50, height: 50)
//                .foregroundColor(.blue)
//                .padding()
//            
//            Text("Reproduzindo \(songName)")
//                .font(.headline)
//                .padding()
//            
//            Button("Reproduzir") {
//                audioManager.playAudio(for: songName)
//            }
//        }
//        .onAppear {
//            audioManager.playAudio(for: songName)
//        }
//    }
//}
//
//
//#Preview {
//    PlayerView(songName: "background.mp3", audioManager: AudioManager())
//}
