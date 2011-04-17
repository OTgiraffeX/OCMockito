//
//  OCMockito - StubTest.m
//  Copyright 2011 Jonathan M. Reid. See LICENSE.txt
//

#define MOCKITO_SHORTHAND
#import "OCMockito.h"

    // Test support
#import <SenTestingKit/SenTestingKit.h>

#define HC_SHORTHAND
#if TARGET_OS_MAC
    #import <OCHamcrest/OCHamcrest.h>
#else
    #import <OCHamcrestIOS/OCHamcrestIOS.h>
#endif


@interface StubTest : SenTestCase
@end


@implementation StubTest

- (void)testStubbedMethodWithNoArgsReturningObject
{
    NSString *mockString = mock([NSString class]);
    
    [given([mockString uppercaseString]) willReturn:@"STUBBED"];
    
    assertThat([mockString uppercaseString], is(@"STUBBED"));
}

@end
