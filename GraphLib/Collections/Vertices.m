//
//  Vertices.m
//  GraphLib
//
//  Created by Dmitry Grigorev on 13.08.18.
//  Copyright © 2018 Dmitry Grigorev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vertices.h"

@implementation VerticesCollection:NSObject

-(id) init{
    if(self = [super init])
    {
        // TODO: Init here
        __verticesCollection = [NSDictionary dictionary];
    }
    return self;
}

-(bool) AddVertex:(NSString *)vertex_id{
    // TODO: implement vertex add method
    return true;
}

-(bool) RemoveVertex:(NSString *)vertex_id{
    // TODO: implement vertex remove method
    return true;
}

-(int) Count{
    // TODO: implement count property
    return 0;
}

@end
