//
//  ContentView.swift
//  firstSwiftUI
//
//  Created by User19 on 2023/9/20.
//

import SwiftUI
extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
extension Angle {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
struct ContentView: View {
    var body: some View {
        VStack(){
            HStack(){
                
                Image("saiyan")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .clipped()
                    .overlay(
                        Text("賽亞人")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title)
                            .offset(y:45)
                    )
                    
                    .offset(x: -20, y: 10.0)
                
                
                VStack{
                    Text("Saiyan")
                        .bold()
                    
                    HStack{
                        Text("Color:")
                            .bold()
                        Text("Yello")
                            .foregroundColor(.yellow)
                            .bold()
                        
                    }
                    
                }.offset(x: -60, y: 10.0)
            }
            Spacer()
            HStack(){
                Text("Hello, world!")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.blue)
                    .border(Color.black)
                
                Text("Hell, world!")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.random)
                    .rotation3DEffect(
                        .degrees(Double.random(in: -30...30)),
                        axis: (x: CGFloat.random(in: -30...30), y: CGFloat.random(in: -30...30), z: CGFloat.random(in: -30...30))
                        
                    )
                
            }
            HStack(){
                Text("New, world!")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.random)
                    .rotation3DEffect(
                        .degrees(Double.random(in: -30...30)),
                        axis: (x: CGFloat.random(in: -30...30), y: CGFloat.random(in: -30...30), z: CGFloat.random(in: -30...30))
                        
                    )
                    .border(Color.black)
                    
                    .padding()
                    .border(Color.black)
                Text("hi, world!")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.random)
                    .padding()
                    .background(Color.gray)
                    .rotation3DEffect(
                        .degrees(Double.random(in: -30...30)),
                        axis: (x: CGFloat.random(in: -30...30), y: CGFloat.random(in: -30...30), z: CGFloat.random(in: -30...30))
                        
                    )
                
            }
            
            HStack(){
                text3dview(text: "wtf")
                    .border(Color.black)
                Text("bb, world!")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.random)
                    .padding()
                    .rotation3DEffect(
                        .degrees(Double.random(in: -30...30)),
                        axis: (x: CGFloat.random(in: -30...30), y: CGFloat.random(in: -30...30), z: CGFloat.random(in: -30...30))
                        
                    )
                
            }
            HStack(){
                Text("Bye, world!")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.random)
                    .padding()
                    .rotation3DEffect(
                        .degrees(Double.random(in: -30...30)),
                        axis: (x: CGFloat.random(in: -30...30), y: CGFloat.random(in: -30...30), z: CGFloat.random(in: -30...30))
                        
                    )
                Text("bb, world!")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.random)
                    .padding()
                    .rotation3DEffect(
                        .degrees(Double.random(in: -30...30)),
                        axis: (x: CGFloat.random(in: -30...30), y: CGFloat.random(in: -30...30), z: CGFloat.random(in: -30...30))
                        
                    )
            }
            HStack{
                text3dview(text: "ez")
                text3dview(text: "chesezy")
                
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}   

struct text3dview: View {
    let text: String
    var body: some View {
        Text(text)
            .fontWeight(.heavy)
            .foregroundColor(Color.random)
            .padding()
            .rotation3DEffect(
                .degrees(Double.random(in: -30...30)),
                axis: (x: CGFloat.random(in: -30...30), y: CGFloat.random(in: -30...30), z: CGFloat.random(in: -30...30))
                
            )
    }
}
