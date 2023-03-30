# counter_app_iw

The Flutter famous counter app using InheritedWidget.

> InheritedWidget is a class in Flutter that provides a way to share data across an entire widget subtree. It is used to pass down data from parent widgets to their child widgets, without having to pass the data explicitly through the constructor of each child widget. This makes it easier to manage the state of an app and can improve performance by reducing the number of unnecessary rebuilds.

#### Here are some key features and concepts related to InheritedWidget:

1. InheritedWidget is **immutable**: Once an InheritedWidget is created, its data cannot be changed.
   Instead, a new InheritedWidget must be created with updated data.

2. InheritedWidget defines a "**dependOnInheritedWidgetOfExactType**" method: This method is called
   by child widgets to get access to the InheritedWidget data. If the InheritedWidget data changes,
   this method will trigger a rebuild of the child widget that depends on it.

3. InheritedWidget **can be used for both stateful and stateless widgets**: InheritedWidget can be
   used to share data between both stateful and stateless widgets.

4. InheritedWidget **can be nested**: Multiple InheritedWidgets can be nested within each other to
   provide more complex data sharing across a widget tree.

5. InheritedWidget is used by some of the built-in Flutter widgets: For example, the **MediaQuery**
   widget and the **Theme** widget are implemented using InheritedWidget.

In summary, InheritedWidget is a powerful tool in Flutter for managing the state of an app and
**sharing data between widgets** (best scenario is when the shared data won't change). It is
especially useful for apps that require complex state management, as it allows data to be passed
down through the widget tree in a more efficient and organized way.