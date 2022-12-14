//
//  ContentView.swift
//  AVPlayer
//
//  Created by Princess Empel on 11/1/22.
//
 
import SwiftUI
import AVKit

struct ContentView: View {
    // sets default video
    @State var url = Bundle.main.url(forResource: "AKA_Draft2", withExtension: "mp4")!
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: url)).edgesIgnoringSafeArea(.all)
            HStack {
                // name of link/button
                Text("Video One").foregroundColor(.red).onTapGesture {
                    //file name - case sensitive!!
                    url = Bundle.main.url(forResource: "AKA_Draft2", withExtension: "mp4")!
                }
                Text("Video Two").foregroundColor(.blue).onTapGesture {
                    url = Bundle.main.url(forResource: "josh-nick-lumpia", withExtension: "MP4")!
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
