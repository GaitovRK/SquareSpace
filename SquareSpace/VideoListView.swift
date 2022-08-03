//
//  VideoListView.swift
//  SquareSpace
//
//  Created by Rashid Gaitov on 31.07.2022.
//

import SwiftUI

struct VideoListView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            HStack {
                Image("37-tips")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .cornerRadius(4)
                VStack(alignment: .leading, spacing: 5) {
                    Text("YouTube Video 1")
                        .font(.headline)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    Text("Video Description")
                        .font(.subheadline)
                        .lineLimit(2)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
