//
//  CounterBrain.swift
//  CountR
//
//  Created by Benjamin Wilcox on 2/23/17.
//  Copyright © 2017 Benjamin Wilcox. All rights reserved.
//
class CounterBrain {
    
    /**
     * An ivar to keep track of the current count
     */
    var count:Int = 0 {
        didSet {
            validateCount()
        }
    };
    
    /**
     * Initializer for the class
     */
    init(initialCount:Int) {
        self.count = initialCount
        validateCount()
    }
    
    /**
     * A private helper method to
     */
    private func validateCount() {
        if (count > 999) {
            count = 999
        } else if (count < 0) {
            count = 0
        }
    }
    
    /**
     * increment the count
     */
    func increment() {
        count += 1
    }
    
    /**
     * decrement the count
     */
    func decrement() {
        count -= 1
    }
    
    /**
     * reset the count
     */
    func clear() {
        count = 0
    }

}
