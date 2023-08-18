//
//  CenterList.swift
//  FindCoronaCenter
//
//  Created by 천승희 on 2023/08/16.
//

import SwiftUI

struct CenterList: View {
    var centers = [Center]()
    
    var body: some View {
        List(centers, id: \.id) { center in
            NavigationLink(destination: CenterDetailView(center: center)) {
                CenterRow(center: center)
            }
            .navigationTitle(center.sido.rawValue)
        }
    }
}

struct CenterList_Previews: PreviewProvider {
    static var previews: some View {
        let centers = [
            Center(id: 0, sido: .경기도, facilityName: "실내빙상장 앞", address: "경기도 뫄뫄시", lat: "37.1232", lng: "123.234", centerType: .central, phoneNumber: "010-1111-1111"),
            Center(id: 1, sido: .경기도, facilityName: "실내빙상장 앞", address: "경기도 뫄뫄시", lat: "37.1232", lng: "123.234", centerType: .central, phoneNumber: "010-2222-2222"),
            Center(id: 2, sido: .경기도, facilityName: "실내빙상장 앞", address: "경기도 뫄뫄시", lat: "37.1232", lng: "123.234", centerType: .central, phoneNumber: "010-3333-3333")
        ]
        
        CenterList(centers: centers)
    }
}
