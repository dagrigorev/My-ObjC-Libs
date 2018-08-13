//
//  main.m
//  GraphLib
//
//  Created by Dmitry Grigorev on 13.08.18.
//  Copyright © 2018 Dmitry Grigorev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vertices.h"

int main(int argc, const char * argv[]) {
    //@autoreleasepool {
        VerticesCollection* testColl = [[VerticesCollection alloc] init];
        [testColl AddVertex:@"FirstVertex"];
        [testColl AddVertex:@"SecondVertex"];
        [testColl AddVertex:@"ThirdVertex"];
        [testColl AddVertex:@"FourthVertex"];
        [testColl AddChild:@"FirstVertex" second:@"FirstVertexChild"];
        [testColl Print];
    //}
    return 0;
}
