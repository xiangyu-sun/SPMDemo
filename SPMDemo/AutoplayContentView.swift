//
//  AutoplayContentView.swift
//  SPMDemo
//
//  Created by 孙翔宇 on 21/06/2019.
//  Copyright © 2019 孙翔宇. All rights reserved.
//

import SwiftUI
import BowlingKit

struct AutoplayContentView : View {
    @State var playResultInfomation: String = "6823618716238716387163817638136817368172"
    var bowlingBot = BowlingBot()
    
    var body: some View {
        VStack {
            Text(playResultInfomation)
                .lineLimit(nil)
            VStack {
                    Button(action: autoPlay) {
                        Text("Generate")
                    }
                    .font(.largeTitle)
            }
        }
    }
    
    func autoPlay() {
        do {
            try bowlingBot.generateFullGame()
            playResultInfomation = bowlingBot.game.frames.debugDescription
        } catch {
            
        }
    }
}

#if DEBUG
struct AutoplayContentView_Previews : PreviewProvider {
    static var previews: some View {
        AutoplayContentView()
    }
}
#endif
