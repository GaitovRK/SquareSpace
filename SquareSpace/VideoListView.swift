//
//  VideoListView.swift
//  SquareSpace
//
//  Created by Rashid Gaitov on 31.07.2022.
//

import SwiftUI

struct VideoListView: View {
    
    var videos: [Video] = VideoList.topTen
    var body: some View {
        NavigationView {
            List(videos) { video in
                HStack {
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .cornerRadius(4)
                        .padding(.vertical, 4)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(video.title)
                            .font(.headline)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .lineLimit(2)
                    }
                }
            }
            .navigationTitle("Rashid's Top 10")
            .listStyle(.plain)

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
