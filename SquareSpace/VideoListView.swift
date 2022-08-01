//
//  VideoListView.swift
//  SquareSpace
//
//  Created by Rashid Gaitov on 31.07.2022.
//

import SwiftUI

struct VideoListView: View {
    var body: some View {
        HStack {
            Image("37-tips")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .cornerRadius(4)
            VStack(alignment: .leading, spacing: 5) {
                Text("YouTube Video 1 YouTube Video 1 YouTube Video 1")
                    .font(.headline)
                    .lineLimit(2)
                Text("Video Description Video Description  Video Description ")
                    .font(.subheadline)
                    .lineLimit(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
