# basic_widgets01

## 基础 widgets

Flutter 自带了一套强大的基础 widgets，下面列出了一些常用的：           
1、Text      
Text widget 可以用来在应用内创建带样式的文本。     
2、Row, Column              
这两个 flex widgets 可以让你在水平 (Row) 和垂直(Column) 方向创建灵活的布局。它是基于 web 的 flexbox 布局模型设计的。        
3、Stack     
Stack widget 不是线性（水平或垂直）定位的，而是按照绘制顺序将 widget 堆叠在一起。你可以用 Positioned widget 作为Stack 的子 widget，以相对于 Stack 的上，右，下，左来定位它们。 Stack 是基于 Web 中的绝对位置布局模型设计的。     
4、Container          
Container widget 可以用来创建一个可见的矩形元素。 Container 可以使用 BoxDecoration 来进行装饰，如背景，边框，或阴影等。 Container 还可以设置外边距、内边距和尺寸的约束条件等。另外，Container可以使用矩阵在三维空间进行转换。  

Many Material Design widgets need to be inside of a MaterialApp to display properly, in order to inherit theme data. Therefore, run the application with a MaterialApp.



