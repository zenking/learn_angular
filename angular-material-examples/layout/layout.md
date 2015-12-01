### 概览

Angular Material的响应式CSS布局基于[flexbox](http://www.w3.org/TR/css3-flexbox/)

布局系统使用元素的属性而不是class。属性提供了一个简单的方法去设置一个值(比如，`layout="row"`)，属性定义布局，而
使用class来定义样式。

_注意：在IE11中，由于属性选择器的性能问题，会在代码运行阶段将添加的属性自动转换为class选择器。这对用户是透明的。
所以，你可以继续使用属性来定义布局。_

### 布局属性

在元素上使用`layout`属性定义一行`row`(`layout="row"`)，或者定义一列`column`(`layout="column"`)。
当不给`layout`属性指定值的时候，`layout`默认为`row`。

`row` 在有这个属性的元素内的子元素，将按照水平排列。