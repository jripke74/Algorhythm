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
@property (nonatomic) NSDictionary *colorDictionary;
@property (nonatomic) UIColor *expectedColor;

@end

@implementation BasicTests

- (void)setUp {
    [super setUp];
    self.playlist = [[Playlist alloc]init];
    self.colorDictionary = @{@"red":@255.0, @"green": @155.0, @"blue":@55.0, @"alpha": @1.0};
    self.expectedColor = [UIColor colorWithRed:255.0/255 green:155.0/255 blue:55.0/255 alpha:1];
}

- (void)tearDown {
    self.playlist = nil;
    self.colorDictionary = nil;
    self.expectedColor = nil;
    [super tearDown];
}

- (void)testNotNil {
    XCTAssertNotNil(self.playlist, @"self.playlist IS nil.");
}

- (void)testPlaylistArtistEmpty {
    XCTAssert(self.playlist.playlistArtists.count > 0, @"There are artist in playlists");
}

- (void)testColorIsExpectedColor {
    UIColor *resultColor = [self.playlist rgbColorFromDictionary: self.colorDictionary];
    XCTAssertEqualObjects(resultColor, self.expectedColor, @"resultColor does NOT equal expectedColor");
}

- (void)testMissingColorValue {
    self.colorDictionary = @{@"red": @255.0, @"blue": @155.0, @"alpha":@1.0};
    UIColor *resultColor = [self.playlist rgbColorFromDictionary:self.colorDictionary];
    XCTAssertNotNil(resultColor, @"resultColor is NOT nil");
}

@end
