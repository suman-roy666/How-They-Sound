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
            break;
            
        case DOG:
            _name = @"Dog";
            _sound = @"WOOF";
            break;
            
        case CAT:
            _name = @"Cat";
            _sound = @"MEOW";
            break;
            
        default: return Nil;
            break;
    }
    
    return self;
}

@end
