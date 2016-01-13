# TestGaussianBlur
Gaussian blur on the ViewController of not rendered
##原理
其实原理解释截图分享一样，把View放到一个UIGraphicsGetCurrentContext中去渲染并从Context中获取Image，然后对Image进行高斯模糊。
