 Bloc is a design pattern created by Google to help separate business logic from the presentation layer and enable a developer to reuse code more    efficiently

We are creating a PublishSubject object whose responsibility is to add the data which it got from the server in the form of ItemModel object and pass it to the UI screen as a stream.

## Publish Subject:

Exactly like a normal broadcast StreamController with one exception: this class is both a Stream and Sink.

This Subject allows sending data, error and done events to the listener.

PublishSubject is, by default, a broadcast (aka hot) controller, in order to fulfill the Rx Subject contract. 

This means the Subject's stream can be listened to multiple times.
 
## Behavior Subject:
 
→ BehaviorSubject<T> class Null safety. A special StreamController that captures the latest item that has been added to the controller, and emits that as the first item to any new listener. This subject allows sending data, error and done events to the listener.

 
 ![image](https://user-images.githubusercontent.com/39657409/159454525-8ed731fa-9303-4c1a-8320-20ede4316fb3.png)

