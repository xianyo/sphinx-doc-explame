.. java:import:: com.unionpay.cloudpos OperationResult

SerialPortOperationResult
=========================

.. java:package:: com.unionpay.cloudpos.serialport
   :noindex:

.. java:type:: public interface SerialPortOperationResult extends OperationResult

   \ ``SerialPortOperationResult``\ 是被串口设备产生，用来返回串口的操作结果

   \ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 方法继承至\ :java:ref:`OperationResult <OperationResult>`\ 的对应方法。

   可以在\ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 返回操作结果是成功还是失败， 通过\ :java:ref:`getData()`\ 返回通过串口读到的数据，通过\ :java:ref:`getDataLength()`\ 返回通过串口读到的数据长度。

Methods
-------
getData
^^^^^^^

.. java:method::  byte[] getData()
   :outertype: SerialPortOperationResult

   返回读到的数据

   :return: 数据buffer

getDataLength
^^^^^^^^^^^^^

.. java:method::  int getDataLength()
   :outertype: SerialPortOperationResult

   返回数据长度

   :return: 长度

