//
//  ViewController.m
//  How They Sound
//
//  Created by Suman Roy on 28/09/15.
//  Copyright (c) 2015 Suman Roy. All rights reserved.
//

#import "ViewController.h"
#import "AnimalSound.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

@property (weak, nonatomic) IBOutlet UIView *cowSpeechContainer;
@property (weak, nonatomic) IBOutlet UIView *catSpeechContainer;
@property (weak, nonatomic) IBOutlet UIView *dogSpeechContainer;

@end

@implementation ViewController{
    
    NSArray* containerArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    containerArray = [NSArray arrayWithObjects:_cowSpeechContainer,
                                                _catSpeechContainer,
                                                _dogSpeechContainer,
                                                nil];
    
    [self hideAllContainers];
}

- (IBAction)cowButtonTapHandler:(id)sender {
    
    AnimalSound *cow = [[AnimalSound alloc] initWithType:COW];
    
    [self displayAnimalSound:cow ];
    
    _cowSpeechContainer.hidden = FALSE;
    
}

- (IBAction)catButtonTapHandler:(id)sender {
    
    AnimalSound *cat = [[AnimalSound alloc] initWithType:CAT];

    [self displayAnimalSound:cat ];
    
    _catSpeechContainer.hidden = FALSE;
    
}


- (IBAction)dogButtonTapHandler:(id)sender {
    
    AnimalSound *dog = [[AnimalSound alloc] initWithType:DOG];

    [self displayAnimalSound:dog ];
    
    _dogSpeechContainer.hidden = FALSE;
}



-(void)displayAnimalSound: (AnimalSound*) animal{
    
    [self hideAllContainers];
    
    NSLog(@"%@ says %@",animal.name, animal.sound);
    
    NSMutableString *displaytext = [ NSMutableString stringWithString:@"The " ];
    
    
    [ displaytext appendString:animal.name ];
    [ displaytext appendString:@" says " ];
    
    [ self.displayLabel setText: displaytext ];
    
}

-(void)hideAllContainers{
    
    for ( UIView *container in containerArray) {
        
        [container setHidden:TRUE];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
