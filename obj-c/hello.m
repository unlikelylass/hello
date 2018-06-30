// Objective C Hello World

/*
 * Oh, look -- Apple Objective C-isms that don't work with gcc...
 */

// https://www.binpress.com/tutorial/objectivec-lesson-1-hello-world/41

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSLog(@"Hello, World!");
    [pool drain];
    return 0;
}


/*
 * gcc objective-c code:
 *
 * http://www.maheshsubramaniya.com/article/hello-world-in-objective-c-and-compiling-with-gcc.html
 *
 */

// #import <objc/Object.h>

// #import <stdio.h>

// /** Declare your interface **/
// @interface HelloWorld:Object
// {
// }
// -(void) hello;
// @end

// /** Write your Interface extending Object **/
// // @implementation HelloWorld:Object
// @implementation HelloWorld
// -(void) hello
// {
//     printf("\nHello, World!\n\n");
// }
// @end

// @implementation HelloWorld:

// /** Main **/

// int main(int argv, char* argc[]){
//     // create an object
//     id o = [HelloWorld new];

//     // Pass the message 'hello' to the object
//     [o hello];

//     // printf("\nHello, World!\n\n");
// }

/*
 * Trying gnustep base
 *
 * http://www.nongnu.org/gstutorial/en/ch09.html
 */

// #include <Foundation/NSObject.h>
// #include <Foundation/Foundation.h>

// // #include <stdio.h>

// @interface HelloWorld:NSObject
// {
// }
// -(void) hello;
// @end

// @implementation HelloWorld
// -(void) hello {
//     printf("\nHello, World!\n\n");
//     NSLog(@"hello world");
// }
// @end

// int main(int argc, char** argv){

//     id o;
//     NSAutoreleasePool *pool;

//     pool = [NSAutoreleasePool new];
//     o = [[HelloWorld alloc] init];

//     [o hello];

//     RELEASE(o);
//     RELEASE(pool);

//     return (0);
// }
