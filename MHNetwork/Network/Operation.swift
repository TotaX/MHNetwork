//
//  Operation.swift
//  MHNetwork
//
//  Created by Mohamed Emad Abdalla Hegab on 01.02.18.
//  Copyright © 2018 Mohamed Hegab. All rights reserved.
//

import Foundation

protocol Operation {

    associatedtype Output

    var request: Request { get }

    func exeute(in dispatcher: Dispatcher, completed: @escaping (Output) -> Void, onError: @escaping (NetworkErrors) -> Void)
}
