//
//  CenterRow.swift
//  FindCoronaCenter
//
//  Created by 천승희 on 2023/08/16.
//

import SwiftUI

struct CenterRow: View {
    var center: Center
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(center.facilityName)
                    .font(.headline)
                Text(center.centerType.rawValue)
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
            }
            Text(center.address)
                .font(.footnote)
            
            if let url = URL(string: "tel:" + center.phoneNumber) {
                Link(center.phoneNumber, destination: url)
            }
        }
        .padding()
    }
}

struct CenterRow_Previews: PreviewProvider {
    static var previews: some View {
        let center0 = Center(id: 0, sido: .경기도, facilityName: "실내빙상장 앞", address: "경기도 뫄뫄시", lat: "37.1232", lng: "123.234", centerType: .central, phoneNumber: "010-1111-1111")
        CenterRow(center: center0)
    }
}
