//
//  LsEventDetail.swift
//  iStorm
//
//  Created by Matthieu Bellon on 30/04/2022.
//

import SwiftUI


struct LsEventDetail: View{
    
    var event: LsEvent
    
    
    var body: some View{
        
        VStack{
            ScrollView{
                VStack(alignment: .leading) {
                    Text(event.name)
                        .font(.title)
                    
                    HStack {
                        Text(event.park)
                        Spacer()
                        Text(event.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About \(event.name)")
                        .font(.title2)
                    Text(event.description)
                }
                .padding()
            }
        }
    }
}


struct LsEventDetail_Previews: PreviewProvider {
    static var previews: some View {
        LsEventDetail(event: lsEventsArray[3])
    }
}
