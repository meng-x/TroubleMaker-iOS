//
//  Util.swift
//  tmapp
//
//  Created by TM on 2017/01/06.
//  Copyright © 2017年 TroubleMaker, Inc. All rights reserved.
//

import Foundation

func ExecuteAfter(duration: Int, closure: @escaping () -> Void) {
    let deadlineTime = DispatchTime.now() + .seconds(duration)
    DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
        closure()
    }
}
