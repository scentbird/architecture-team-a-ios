//
//  MainCatalogEventHandler.swift
//  architecture
//
//  Created by Eugene Sorokin on 25/10/2018.
//  Copyright © 2018 HandH. All rights reserved.
//

import HHModule

final class MainCatalogEventHandler: ARCHEventHandler<MainCatalogState>, MainCatalogModuleInput {

    weak var moduleOutput: MainCatalogModuleOutput?

    var value: Int = 0

    override func viewIsReady() {
        super.viewIsReady()

        state.value = String(value)
    }
}
