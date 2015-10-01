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
            _name = @"Cow";
            _sound = @"MOOO";
            _numberOfLegs = [ NSNumber numberWithInt:4];
            break;
            
        case DOG:
            _name = @"Dog";
            _sound = @"WOOF";
            _numberOfLegs = [ NSNumber numberWithInt:4];
            break;
            
        case CAT:
            _name = @"Cat";
            _sound = @"MEOW";
            _numberOfLegs = [ NSNumber numberWithInt:4];
            break;
            
        case HORSE:
            _name = @"Horse";
            _sound = @"NEEIGH";
            _numberOfLegs = [ NSNumber numberWithInt:4];
            break;
            
        case DUCK:
            _name = @"Duck";
            _sound = @"Quack";
            _numberOfLegs = [ NSNumber numberWithInt:2];
            break;
            
        case CHICKEN:
            _name = @"Chicken";
            _sound = @"Cluck";
            _numberOfLegs = [ NSNumber numberWithInt:2];
            break;
            
        default: return Nil;
            break;
    }
    
    return self;
}

@end
