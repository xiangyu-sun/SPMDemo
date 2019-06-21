//
//  ContentView.swift
//  SPMDemo
//
//  Created by 孙翔宇 on 20/06/2019.
//  Copyright © 2019 孙翔宇. All rights reserved.
//

import SwiftUI
import BowlingKit
struct ContentView : View {
    @State var playResultInfomation: String = "Tap throw to start"
    var bowlingBot = BowlingBot()
    
    var body: some View {
        VStack {
            Text(playResultInfomation)
             .font(.largeTitle)
            Button(action: throwNextBall) {
                Text("Throw")
            }
            .font(.largeTitle)
        }
    }
    
    func throwNextBall() {
        do {
            playResultInfomation = "\(try bowlingBot.rollNextBall())"
        } catch {
            playResultInfomation = "Game finished"
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
