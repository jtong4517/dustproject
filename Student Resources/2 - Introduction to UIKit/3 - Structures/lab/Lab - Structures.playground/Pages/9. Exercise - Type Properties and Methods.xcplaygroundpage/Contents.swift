/*:
 ## Exercise - Type Properties and Methods
 
 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
struct User {
    var userName: String
    var email: String
    var age: Int
    
    
    //static var currentUser = User(userName: "Jeffrey Tong", email: "tong.math123@gmail.com", age: 13);
    var currentUser: Any;
    
    /*
        A static variable cannot be changed by a method.
        Multiple placeholders/workarounds were added to complete at least part of the exercise.
    */
    mutating func logIn (user: User) {
        currentUser = user;
        print("Logged in as " + user.userName);
    }
}
/*:
 There are other properties and actions associated with a `User` struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called `logIn(user:)` where `user` is of type `User`. In the body of the method, assign the passed in user to the `currentUser` property, and print out a statement using the user's userName saying that the user has logged in.
 
 Below, call the `logIn(user:)` method and pass in a different `User` instance than what you assigned to currentUser above. Observe the printout in the console.
 */
var myUser = User(userName: "Test_name", email: "jtong4517@inst.hcpss.org", age: 15, currentUser: "(placeholder)");
myUser.logIn(user: myUser);
//: [Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
