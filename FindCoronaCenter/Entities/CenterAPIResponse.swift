//
//  CenterAPIResponse.swift
//  FindCoronaCenter
//
//  Created by 천승희 on 2023/08/01.
//

import Foundation

struct CenterAPIResponse: Decodable {
    let data: [Center]
}
