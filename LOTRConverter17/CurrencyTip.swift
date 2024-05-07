//
//  CurrencyTip.swift
//  LOTRConverter17
//
//  Created by Elnura Arzybaeva on 19.04.24.
//

import Foundation
import TipKit

struct CurrencyTip:Tip {
    var title = Text ("Change Currency")
    var message: Text? = Text("You can tap the right or left currency to bring up the Select Currency screen.")
    
    
}
