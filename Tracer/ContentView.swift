//
//  ContentView.swift
//  Tracer
//
//  Created by James Patrick Gibson on 6/22/20.
//

import SwiftUI

struct ContentView: View {
    var jumps: [Jump] = []
    
    var body: some View {
        NavigationView {
            List(jumps) { jump in
                JumpItem(jump: jump)
            }
            .navigationBarTitle(Text("Jumps"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(jumps: testData)
            .previewDevice("iPhone 11")
            .preferredColorScheme(.dark)
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
