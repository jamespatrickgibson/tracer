//
//  ContentView.swift
//  Tracer
//
//  Created by James Patrick Gibson on 6/22/20.
//

import SwiftUI

struct ContentView: View {
    var jumps: [Jump] = []
    
    @State private var number = ""
    @State private var jumpPlace = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    // Form Fields Go Here
                    TextField("Jump Number", text: $number)
                    TextField("Place", text: $jumpPlace)
                    Button(action: {
                        print("hi")
                    }) {
                        Text("Add Jump")
                    }
                }
                List(jumps) { jump in
                    JumpItem(jump: jump)
                }
            }
            .navigationBarTitle(Text("Jumps"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(jumps: testData)
            .previewLayout(.device)
            .previewDevice("iPhone 11")
    }
}
#endif

struct JumpItem: View {
    let jump: Jump
    var body: some View {
        NavigationLink( destination: JumpDetail(jumpNumber: jump.jumpNumber, place: jump.place)) {
            Image(systemName: "photo")
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/4.0/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(jump.jumpNumber)
                Text(jump.place)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}
