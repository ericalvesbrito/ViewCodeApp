//
//  CodeView.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 13/10/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import Foundation

protocol CodeView {
    func setup()
    func setupComponents()
    func setupConstraints()
    func setupExtraConfigurations()
}

extension CodeView {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfigurations()
    }
}
