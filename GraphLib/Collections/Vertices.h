//
//  Vertices.h
//  GraphLib
//
//  Created by Dmitry Grigorev on 13.08.18.
//  Copyright © 2018 Dmitry Grigorev. All rights reserved.
//

#ifndef Vertices_h
#define Vertices_h

#import <Foundation/Foundation.h>

@interface VerticesCollection: NSObject


/**
 Vertices stored here
 */
@property (strong, nonatomic) NSDictionary<NSString*, VerticesCollection*> *_verticesCollection;

/**
 Initialize empty dictionary of vertices

 @return <#return value description#>
 */
-(id)init;

/**
 Add vertex with same id

 @param vertex_id vertex name (NSString type)
 @return true - if added successfully, false - otherwise
 */
- (bool)AddVertex:(NSString*)vertex_id;


/**
 Remove vertex with same id
 
 @param vertex_id vertex name (NSString* type)
 @return true - if removed successfully, false - otherwise
 */
- (bool)RemoveVertex:(NSString*)vertex_id;


/**
 Get count of vertices
 @return count of vertices in collection (int type)
 */
- (int)Count;
@end

#endif /* Vertices_h */
