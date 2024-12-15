function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  // Use a pixel-perfect collision detection method
  var bounds1:Rectangle = obj1.getBounds(obj1.parent);
  var bounds2:Rectangle = obj2.getBounds(obj2.parent);
  var intersection:Rectangle = bounds1.intersection(bounds2);
  if (intersection.width > 0 && intersection.height > 0) {
    // Check for pixel-level overlap
    if (checkPixelCollision(obj1, obj2, intersection)) {
      trace("Collision detected!");
      return true;
    }
  }
  return false;
}

function checkPixelCollision(obj1:MovieClip, obj2:MovieClip, intersection:Rectangle):Boolean {
  // Implement pixel-perfect collision detection here (using BitmapData)
  // ... (Implementation details omitted for brevity) ...
  return false; // Replace with actual pixel-level collision check
}
//Note: The implementation of `checkPixelCollision` would involve iterating
//through the pixels of the two bitmaps within the intersection bounds and checking for overlap.