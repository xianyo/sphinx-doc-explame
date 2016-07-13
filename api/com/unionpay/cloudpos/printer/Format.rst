.. java:import:: java.util HashMap

Format
======

.. java:package:: com.unionpay.cloudpos.printer
   :noindex:

.. java:type:: public class Format

   打印格式根接口，程序定义的打印格式必须实现该接口。

Constructors
------------
Format
^^^^^^

.. java:constructor:: public Format()
   :outertype: Format

Methods
-------
clear
^^^^^

.. java:method:: public void clear()
   :outertype: Format

   清除所有打印格式.

getParameter
^^^^^^^^^^^^

.. java:method:: public String getParameter(String key)
   :outertype: Format

   返回打印格式.

   :param key: 传入主键
   :return: 打印格式

remove
^^^^^^

.. java:method:: public void remove(String key)
   :outertype: Format

   移除某一个参数

   :param key: 传入主键

setParameter
^^^^^^^^^^^^

.. java:method:: public void setParameter(String key, String value)
   :outertype: Format

   以键-值对的方式设置打印格式.

   目前定义的键-值如下所示：

   ..

   #. 打印浓度（density）

      对应的值为：\ ``light``\ (淡)，\ ``medium``\ (中)，\ ``dark``\ (深)。

      对字符，图形及条码打印都有效。

   #. 加粗（bold）

      对应的值为：\ ``true``\ (是)，\ ``false``\ (否)。其中，\ ``true``\ ，\ ``false``\ ，不区分大小写。

      对字符打印有效。

   #. 反白（reverse）

      对应的值为：\ ``true``\ (是)，\ ``false``\ (否)。其中，\ ``true``\ ，\ ``false``\ ，不区分大小写。

      对字符打印有效。

   #. 上下倒置（inversion）

      对应的值为：\ ``true``\ (是)，\ ``false``\ (否)。其中，\ ``true``\ ，\ ``false``\ ，不区分大小写。

      对字符打印有效。

   #. 删除线（line-through）

      对应的值为：\ ``1``\ (连续的删除线)，\ ``2``\ (断开的删除线)。

      对字符打印有效。

   #. 大小（size）

      对应的值为：\ ``extra-small``\ (特小)，\ ``small``\ (小)，\ ``medium``\ (中)，\ ``large``\ (大)，\ ``extra-large``\ (特大)。

      对字符打印有效。

   #. 对齐方式（align）

      对应的值为：\ ``left``\ (靠左)，\ ``right``\ (靠右)，\ ``center``\ (居中)。

      对字符及图形打印有效。

   #. 斜体（italic）

      对应的值为：\ ``true``\ (是)，\ ``false``\ (否)。其中，\ ``true``\ ，\ ``false``\ ，不区分大小写。

      对字符打印有效。

   #. HRI字符的打印位置（HRI-location）

      对应的值为：\ ``none``\ (不打印)，\ ``up``\ (条码上方)，\ ``down``\ (条码下方)，\ ``up-down``\ (条码上下方)。

      对条码打印有效。

   :param key: 打印格式主键
   :param value: 打印格式值

