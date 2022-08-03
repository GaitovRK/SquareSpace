//
//  VideoDetailView.swift
//  SquareSpace
//
//  Created by Rashid Gaitov on 03.08.2022.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(8)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                Text(video.uploadDate)
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Text(video.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Link(destination: video.url) {
                Text("Watch on YouTube")
                    .bold()
                    .font(.title2)
                    .frame(width: 220, height: 40)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            Spacer()
        }
        
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}
