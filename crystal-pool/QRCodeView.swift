//  QRCodeView.swift
//  crystal-pool

import SwiftUI

struct QRCodeView: View {
    @State private var qrCodeString = "9fSBXH9DG92rnvYXDgjXkwFzQusQZjus5DMVE63Hfs3y3gUQS6h"
    @State private var showCopyConfirmation = false
    
    var body: some View {
        VStack {
            Text("0.0 ERG")
                .font(.largeTitle)
                .padding()
            if let qrCodeImage = generateQRCode(from: "ergo:" + qrCodeString) {
                Image(uiImage: qrCodeImage)
                    .interpolation(.none)
                    .resizable()
                    .frame(width: 200, height: 200)
            } else {
                Text("QR Code generation failed")
            }
            
            HStack(spacing: 0) {
                TextField("Address", text: $qrCodeString)
                    .disabled(true)
                    .padding(.horizontal, 8)
                    .frame(height: 40)
                    .background(Color.white)
                    .overlay(
                        Rectangle()
                                .stroke(Color.gray, lineWidth: 1)
                    )
                
                Button(action: {
                    UIPasteboard.general.string = qrCodeString
                    showCopyConfirmation = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        showCopyConfirmation = false
                    }
                }) {
                    Image(systemName: "doc.on.doc")
                        .frame(width: 41, height: 41)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(
                                .rect(
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 8,
                                    topTrailingRadius: 8
                                )
                            )
                }
            }
            .frame(width: 200, height: 40)
            
            if showCopyConfirmation {
                Text("Address copied to clipboard!")
                    .foregroundColor(.green)
                    .padding(.top)
            } else {
                Text(" ") // Empty text to maintain height
                    .padding(.top)
            }
        }
    }
}

func generateQRCode(from string: String) -> UIImage? {
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    filter.message = Data(string.utf8)
    
    if let outputImage = filter.outputImage {
        let transformedImage = outputImage.transformed(by: CGAffineTransform(scaleX: 10, y: 10))
        if let cgImage = context.createCGImage(transformedImage, from: transformedImage.extent) {
            return UIImage(cgImage: cgImage)
        }
    }
    
    return nil
}


#Preview {
    QRCodeView()
}
