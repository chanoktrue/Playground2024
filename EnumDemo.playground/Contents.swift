import UIKit

//EnumDemo

enum CompassPoint: CaseIterable {
    case north
    case south
    
    var show: String {
        switch self {
        case .north:
            return("เหนือ")
        case .south:
            return("ใต้")
        }
    }
}

let point: CompassPoint = .north

print(point.show)

for point in CompassPoint.allCases {
    print(point)
}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}


var productBarcode: Barcode = .qrCode("test barcode")


switch productBarcode {
case .upc(let a, let b, let c, let d):
        print("UPC : \(a) \(b) \(c) \(d)")
case .qrCode(let code):
    print("QR code : \(code)")
    
}

enum CompassPointRaw: String {
    case nort, south
}

let comp: CompassPointRaw = .nort
print(comp)
