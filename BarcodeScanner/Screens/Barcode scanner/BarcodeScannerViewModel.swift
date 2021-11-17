//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Владислав Белов on 17.11.2021.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject{
    
   @Published var scannedCode = ""
    @Published var  alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not yet scanned": scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
