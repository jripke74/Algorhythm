//
//  BasicTests.m
//  Algorhythm
//
//  Created by Jeff Ripke on 8/9/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Playlist.h"

@interface BasicTests : XCTestCase

@property (nonatomic) Playlist *playlist;

@end

@implementation BasicTests

- (void)setUp {
    [super setUp];
    self.playlist = [[Playlist alloc]init];
}

- (void)tearDown {
    self.playlist = nil;
    [super tearDown];
}

- (void)testNotNil {
    XCTAssertNotNil(self.playlist, @"self.playlist IS nil.");
}

@end
