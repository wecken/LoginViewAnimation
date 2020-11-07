# LoginViewAnimation

This is a demo code for animating dummy 'login view'. 
Animation starts as soon as the view is loaded.
You can tap on re-animate button to see the animation again.

# GIF
<img src="https://res.cloudinary.com/dlhzyuewr/image/fetch/s--LNHfTfvb--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_1200/https://storage.googleapis.com/zenn-user-upload/kq44spgf9s4afmxedm6m5do4h5ig">

# Technology
The key API on this sample project is called `CGAffineTransform`. It offers various ways to tranform layers (=views), like scaling up/down, or offsetting the coordinates of them. 
In the `prepareForAnimation` function, objects are set to invisible and transformed to prepare the animation. 
In the `startAnimate` function, objects go back to the original state as they animate. 
To get the transformed object back to the original state, you can call `.setAffineTransform(CGAffineTransform.identity)`. 
Calling this method within `UIView.animate` makes it possible to animate as it builds-in, and when the animation finishes, all the objects are back in desired places.
This way, you can easily add nice animation to a still view like login view after all the UI elements are coded. 

# How to use
All codes are in `ViewController.swift`. Download the entire project and try it out, or just take whatever the lines of code you like into your own project. 
