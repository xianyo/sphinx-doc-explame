.. java:import:: com.unionpay.cloudpos DeviceSpec

HSMDeviceSpec
=============

.. java:package:: com.unionpay.cloudpos.hsm
   :noindex:

.. java:type:: public interface HSMDeviceSpec extends DeviceSpec

   \ **HSMDeviceSpec**\ 定义了对安全模块的详细描述。

   通过调用\ :java:ref:`getAlgorithms()`\ 返回安全模块的算法。

Methods
-------
getAlgorithms
^^^^^^^^^^^^^

.. java:method::  int[] getAlgorithms()
   :outertype: HSMDeviceSpec

   返回安全模块中的支持的所有加密算法。

   :return: 返回支持的所有加密算法，不支持返回null。

