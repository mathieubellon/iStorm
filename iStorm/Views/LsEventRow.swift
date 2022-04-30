//
//  LsEventRow.swift
//  iStorm
//
//  Created by Matthieu Bellon on 30/04/2022.
//

import SwiftUI


struct LsEventRow: View{
    var LsEvent: LsEvent
    var body: some View{
        HStack {
            
            Image(systemName: "shareplay")

            Text(LsEvent.name)

            Spacer()
        }
    }
}


struct LsEventRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LsEventRow(LsEvent: lsEventsArray[0])
            LsEventRow(LsEvent: lsEventsArray[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
       
}
