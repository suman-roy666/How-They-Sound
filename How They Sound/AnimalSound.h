//
//  AnimalSound.h
//  How They Sound
//
//  Created by Suman Roy on 28/09/15.
//  Copyright (c) 2015 Suman Roy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,animalType) {
    
    COW,
    DOG,
    CAT,
    HORSE,
    DUCK,
    CHICKEN
    
} ;

@interface AnimalSound : NSObject

@property (readonly) NSString* name;

@property (readonly) NSString* sound;

@property (readonly) NSNumber* numberOfLegs;

@property animalType* animal;

-(id)init __attribute__((unavailable("Must use initWithType: instead.")));

-(id)initWithType: (animalType) type;

@end
