# ActionScript 3 hitTestObject() Issue

This repository demonstrates an uncommon issue with the `hitTestObject()` method in ActionScript 3. The issue involves unexpected behavior when checking for collisions between MovieClip instances, particularly when objects have non-rectangular boundaries or are slightly overlapping.

## Bug Description
The `checkCollision()` function, provided in `bug.as`, uses `hitTestObject()` to detect collisions.  Under certain circumstances (e.g., objects barely touching, complex shapes), `hitTestObject()` may return `false` even when visual inspection indicates a collision.

## Solution
The solution, in `bugSolution.as`, addresses the limitations of `hitTestObject()` by using a more robust collision detection method. It implements a pixel-perfect collision detection algorithm to ensure accurate results, regardless of object shape and overlapping degree.

## How to Reproduce
1.  Compile both `bug.as` and `bugSolution.as` using an ActionScript 3 compiler (like the one included with FlashDevelop).
2.  Run the compiled SWFs. Note the differences in collision detection between the original implementation and the solution.

## Additional Notes
This bug highlights the importance of understanding the limitations of built-in collision detection functions. For complex collision scenarios, more sophisticated algorithms are often necessary.