// Use Xtend UI
import "xtendui";
import "xtendui/src/toggle";
import "xtendui/src/overlay";

import { Xt } from "xtendui";
import gsap from "gsap";
import bezierEasing from "bezier-easing";

// Register custom easings
gsap.registerEase("in", progress => {
  const easing = bezierEasing(1, 0, 1, 0.5);
  return easing(progress);
});

gsap.registerEase("out", progress => {
  const easing = bezierEasing(0, 1, 0.5, 1);
  return easing(progress);
});

gsap.registerEase("inOut", progress => {
  const easing = bezierEasing(1, 0, 0, 1);
  return easing(progress);
});

// Reduce motion for accessibility purposes
if (matchMedia("(prefers-reduced-motion: reduce), (update: slow)").matches) {
  gsap.globalTimeline.timeScale(1000);
  Xt.durationTimescale = 1000;
  Xt.autoTimescale = 0.5;
}
