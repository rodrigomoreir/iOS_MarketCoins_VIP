//
//  GenericDataProvider.swift
//  MarketCoins
//
//  Created by Rodrigo Alves Moreira on 16/10/23.
//

import Foundation

protocol GenericDataProviderDelegate {
    func success(model: Any)
    func errorData(_ provider: GenericDataProviderDelegate?, error: Error)
}

class DataProviderManager<T, S> {
    var delegate: T?
    var model: S?
}
