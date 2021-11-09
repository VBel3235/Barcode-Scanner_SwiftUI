//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Владислав Белов on 23.10.2021.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
   
    @Binding var scannedCode: String
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC.init(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    final class Coordinator: NSObject, ScannerVCDelegate{
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        private let scannerView: ScannerView
        
        func didFind(barcode: String) {
            scannerView.scannedCode = barcode
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
    }
    
   
    
  
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView(scannedCode: .constant("12345344"))
    }
}
