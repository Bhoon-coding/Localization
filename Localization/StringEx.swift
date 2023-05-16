//
//  StringEx.swift
//  Localization
//
//  Created by BH on 2023/05/16.
//

import Foundation

extension String {
    func localized(comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
}
