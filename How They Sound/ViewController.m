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

@property (weak, nonatomic) IBOutlet UIScrollView *scrollControl;

@property (weak, nonatomic) IBOutlet UIView *cowSpeechContainer;
@property (weak, nonatomic) IBOutlet UIView *catSpeechContainer;
@property (weak, nonatomic) IBOutlet UIView *dogSpeechContainer;
@property (weak, nonatomic) IBOutlet UIView *chickenSpeechContainer;
@property (weak, nonatomic) IBOutlet UIView *duckSpeechContainer;

@end

@implementation ViewController{
    
    NSArray* containerArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.scrollControl setScrollEnabled:TRUE];
    [self.scrollControl setContentSize:CGSizeMake(358, 1191) ];
    
    containerArray = [NSArray arrayWithObjects:_cowSpeechContainer,
                                                _catSpeechContainer,
                                                _dogSpeechContainer,
                                                _chickenSpeechContainer,
                                                _duckSpeechContainer,
                                                nil];
    
    [self hideAllContainers];
}

- (IBAction)duckButtonTapHandler:(id)sender {
    
    AnimalSound *duck = [[AnimalSound alloc] initWithType:DUCK ];
    
    [ self displayAnimalSound:duck ];
    
    _duckSpeechContainer.hidden = FALSE;
}

- (IBAction)chickenButtonTapHandler:(id)sender {
    
    AnimalSound *chicken = [[AnimalSound alloc] initWithType:CHICKEN ];
    
    [self displayAnimalSound:chicken];
    
    _chickenSpeechContainer.hidden = FALSE;
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
    
    NSLog(@"The %@ says %@",animal.name, animal.sound);
    NSLog(@"The %@ has %@ legs",animal.name, animal.numberOfLegs);
    
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
