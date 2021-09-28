import 'package:flutter/material.dart';

/**
 * 基础 widgets    Basic widgets
 *  Flutter 自带了一套强大的基础 widgets，下面列出了一些常用的：
 * 1、Text
 * Text widget 可以用来在应用内创建带样式的文本。
 * 2、Row, Column
 * 这两个 flex widgets 可以让你在水平 (Row) 和垂直(Column) 方向创建灵活的布局。
 * 它是基于 web 的 flexbox 布局模型设计的。
 * 3、Stack
 * Stack widget 不是线性（水平或垂直）定位的，而是按照绘制顺序将 widget 堆叠在一起。
 * 你可以用 Positioned widget 作为Stack 的子 widget，以相对于 Stack 的上，右，下，左来定位它们。 
 * Stack 是基于 Web 中的绝对位置布局模型设计的。
 * 4、Container
 * Container widget 可以用来创建一个可见的矩形元素。 
 * Container 可以使用 BoxDecoration 来进行装饰，如背景，边框，或阴影等。 
 * Container 还可以设置外边距、内边距和尺寸的约束条件等。另外，Container可以使用矩阵在三维空间进行转换。
 * */

// 下面是一些简单的 widget，它们结合了上面提到的 widget 和一些其他的 widget：
void main() {
  // runApp(const MyApp());
  const MaterialApp(
    title: 'my app', // used by the OS task switcher
    home: SafeArea(child: MyScaffold()),
  );
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);

  // Fields in a Widget subclass are always marked "final".
  //中间的子 widget（title widget），被标记为 Expanded，这意味着它会扩展以填充其它子 widget 未使用的可用空间。
  final Widget title;
  // 你可以定义多个Expanded 子 widget，并使用 flex 参数确定它们占用可用空间的比例。

  @override
  Widget build(BuildContext context) {
    return Container(
      // MyAppBar widget 创建了一个高 56 独立像素，左右内边距 8 像素的 Container。
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        //在容器内，MyAppBar 以 Row 布局来组织它的子元素。
        // <Widget> is the type of items in the list.
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context) //
                  .primaryTextTheme
                  .headline6,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('Hello, world!'),
            ),
          ),
        ],
      ),
    );
  }
}
