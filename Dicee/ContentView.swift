//
//  ContentView.swift
//  Dicee
//
//  Created by Gokul Nair on 14/08/20.
//  Copyright © 2020 Gokul Nair. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNo = 1
    @State var rightDiceNo = 1
    
    var body: some View {
        
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo").frame(width: 100, height: 100, alignment: .center).padding()
                Spacer()
                HStack {
                    
                    DiceView(n: leftDiceNo)
                    DiceView(n: rightDiceNo)
                    
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    
                    self.leftDiceNo = Int.random(in: 1...6)
                    self.rightDiceNo = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll").font(Font.custom("Avenir", size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    }.background(Color.red).cornerRadius(10)
            }
        }
    }
}



struct DiceView: View {
    let n:Int
    var body: some View {
        
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


