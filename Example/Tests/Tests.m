//
//  jaeger-client-objcTests.m
//  jaeger-client-objcTests
//
//  Created by pat2man on 05/23/2017.
//  Copyright (c) 2017 pat2man. All rights reserved.
//

@import XCTest;
@import opentracing;
#import "Tracer.h"

@interface Tests : XCTestCase

@property (strong, nonatomic, nonnull) Tracer *tracer;

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    
    NSURL *baseURL = [NSURL URLWithString:@"thrift://trace.mtlab.meitu.com:30728"];
    self.tracer = [[Tracer alloc] initWithBaseURL:baseURL];
    

}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSpanSending {
    [self.tracer asyncFlush:^(NSError * _Nullable error) {
        NSDictionary *tags = @{@"foo23": @"bar", @"test.type": @"xctest"};
        NSDate *oneMinuteAgo = [NSDate dateWithTimeIntervalSinceNow:-60];
        
        id<OTSpan> testSpan = [[OTGlobal sharedTracer] startSpan:@"Parent" childOf:nil tags:tags startTime:oneMinuteAgo];
        
        
        
        NSDate *finishTime = [NSDate date];
        
        [testSpan finishWithTime:finishTime];
        
        while([[NSDate date] timeIntervalSinceDate:finishTime] < 5) {
            [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
        }
    }];
    
}

@end

