//
//  JumpDetail.swift
//  Tracer
//
//  Created by James Patrick Gibson on 6/22/20.
//

import SwiftUI

struct JumpDetail: View {
    var jumpNumber: String
    var place: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(jumpNumber)
                .font(.title)
            Text(place)
                .font(.subheadline)
            Divider()
            Text("Some other information should go here as long as there is space")
                .font(.headline)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .lineLimit(20)
            
            Button(action: {
                    print("Delete Tapped!")}) {
                Text("Delete")
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.horizontal, 20.0/*@END_MENU_TOKEN@*/)
        .navigationBarTitle(Text(jumpNumber), displayMode: .inline)
    }
}

#if DEBUG
struct JumpDetail_Previews: PreviewProvider {
    static var previews: some View {
        JumpDetail(jumpNumber: "1", place: "The Ranch")
    }
}
#endif
