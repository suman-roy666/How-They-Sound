//
//  AnimalSound.m
//  How They Sound
//
//  Created by Suman Roy on 28/09/15.
//  Copyright (c) 2015 Suman Roy. All rights reserved.
//

#import "AnimalSound.h"

@implementation AnimalSound


-(id)initWithType: (animalType) type{
    
    switch (type) {
            
        case COW:
            _name = NSLocalizedString(@"cow", @"");
            _sound = @"MOOO";
            _numberOfLegs = [ NSNumber numberWithInt:4];
            break;
            
        case DOG:
            _name = NSLocalizedString(@"dog", @"");
            _sound = @"WOOF";
            _numberOfLegs = [ NSNumber numberWithInt:4];
            break;
            
        case CAT:
            _name = NSLocalizedString(@"cat", @"");
            _sound = @"MEOW";
            _numberOfLegs = [ NSNumber numberWithInt:4];
            break;
            
        case HORSE:
            _name = @"Horse";
            _sound = @"NEEIGH";
            _numberOfLegs = [ NSNumber numberWithInt:4];
            break;
            
        case DUCK:
            _name = NSLocalizedString(@"duck", @"");
            _sound = @"Quack";
            _numberOfLegs = [ NSNumber numberWithInt:2];
            break;
            
        case CHICKEN:
            _name = NSLocalizedString(@"chicken", @"");
            _sound = @"Cluck";
            _numberOfLegs = [ NSNumber numberWithInt:2];
            break;
            
        default: return Nil;
            break;
    }
    
    return self;
}

@end
