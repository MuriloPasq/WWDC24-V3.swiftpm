import SwiftUI

extension Font {
    public static var caveatT1: Font {
        get {
            custom("CaveatBrush-Regular", size: 96)
        }
    }
    public static var caveatTitle: Font {
        get {
            custom("CaveatBrush-Regular", size: 32)
        }
    }
    public static var caveatBody: Font {
        get {
            custom("CaveatBrush-Regular", size: 16)
        }
    }
    
    public static var robotoT2: Font {
        get {
            custom("RobotoSlab-Regular", size: 36)
        }
    }
    public static var robotoBody: Font {
        get {
            custom("RobotoSlab-Regular", size: 16)
        }
    }
}
