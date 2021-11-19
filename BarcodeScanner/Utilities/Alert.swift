//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Владислав Белов on 17.11.2021.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("invalid device input"), message: Text("Something is wrong with the camera on your device. We are unable to capture the input"), dismissButton: .default(Text("OK")))
    static let invalidScannedType = AlertItem(title: Text("Invalid scanned type"), message: Text("Value scanned is not valid. This app scans EAN-8 and EAN-13"), dismissButton: .default(Text("OK")))
}
