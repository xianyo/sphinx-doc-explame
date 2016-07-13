OperationListener
=================

.. java:package:: com.unionpay.cloudpos
   :noindex:

.. java:type:: public interface OperationListener

   异步方法的动作监听接口。 设备调用本接口的handleResult方法返回异步操作的结果。 每个应用程序必须实现自己的OperationListener，在调用设备对象的异步方法时，将自定义OperationListener作为参数传递给设备对象，设备对象会操作具体的设备。

Methods
-------
handleResult
^^^^^^^^^^^^

.. java:method::  void handleResult(OperationResult result)
   :outertype: OperationListener

   当异步操作动作完成后，该方法被调用。

   异步操作的结果会设置到\ ``OperationResult``\ 中，应用程序根据回调函数中传递过来的\ ``OperationResult``\ ，判断结果数据。

   :param result: 异步操作动作的结果

   **See also:** :java:ref:`OperationResult`

