OperationResult
===============

.. java:package:: com.unionpay.cloudpos
   :noindex:

.. java:type:: public interface OperationResult

   操作结果是由设备接口的实现者创建，用来通知操作调用者/监听者这次操作的结果。

   \ **OperationResult**\ 是所有设备操作结果的基类，定义了通用的获得结果的方法。 针对每个具体设备可能会有自己特殊的子类返回该设备特有的结果对象。

   本类中的\ ``getResultCode``\ 方法用于让应用程序判断操作是否成功。

Fields
------
CANCEL
^^^^^^

.. java:field::  int CANCEL
   :outertype: OperationResult

   取消

ERR_DEVICE_BASE
^^^^^^^^^^^^^^^

.. java:field::  int ERR_DEVICE_BASE
   :outertype: OperationResult

   设备错误起始值

ERR_GENERAL_ERROR
^^^^^^^^^^^^^^^^^

.. java:field::  int ERR_GENERAL_ERROR
   :outertype: OperationResult

   严重错误

ERR_NO_INFO
^^^^^^^^^^^

.. java:field::  int ERR_NO_INFO
   :outertype: OperationResult

   无法定位具体原因的错误，需要具体看每个Control的实现

ERR_NO_PERMISSION
^^^^^^^^^^^^^^^^^

.. java:field::  int ERR_NO_PERMISSION
   :outertype: OperationResult

   执行权限错误，包含：

   ..

   * 操作没有被Control支持。
   * 执行时机不对，目前无法执行这个操作。

ERR_TIMEOUT
^^^^^^^^^^^

.. java:field::  int ERR_TIMEOUT
   :outertype: OperationResult

   超时

NONE
^^^^

.. java:field::  int NONE
   :outertype: OperationResult

   默认初始状态

SUCCESS
^^^^^^^

.. java:field::  int SUCCESS
   :outertype: OperationResult

   成功

Methods
-------
getResultCode
^^^^^^^^^^^^^

.. java:method::  int getResultCode()
   :outertype: OperationResult

   返回操作状态

   :return: 上述的常量值

