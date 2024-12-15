function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  if (obj1.hitTestObject(obj2)) {
    trace("Collision detected!");
    return true;
  } else {
    return false; 
  }
}