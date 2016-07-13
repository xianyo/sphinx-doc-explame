.. java:import:: com.unionpay.cloudpos OperationResult

MSROperationResult
==================

.. java:package:: com.unionpay.cloudpos.msr
   :noindex:

.. java:type:: public interface MSROperationResult extends OperationResult

   \ ``MSROperationResult``\ 是被磁条卡阅读器设备产生，用来返回磁条卡的操作结果。

   \ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 方法继承至\ :java:ref:`OperationResult`\ 的对应方法。

   这里通过"ERR_"设置了本设备相关的自定义错误，可以在\ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 返回， 通过\ :java:ref:`getMSTrackData() <MSROperationResult.getMSRTrackData()>`\ 返回磁条卡数据对象。

Fields
------
ERR_INVALIDMEDIA
^^^^^^^^^^^^^^^^

.. java:field::  int ERR_INVALIDMEDIA
   :outertype: MSROperationResult

   磁条卡数据无法读取

ERR_NOMEDIA
^^^^^^^^^^^

.. java:field::  int ERR_NOMEDIA
   :outertype: MSROperationResult

   没有检测到磁条卡信息

ERR_READFAIL
^^^^^^^^^^^^

.. java:field::  int ERR_READFAIL
   :outertype: MSROperationResult

   检查到磁条卡数据编码错误

Methods
-------
getMSRTrackData
^^^^^^^^^^^^^^^

.. java:method:: public MSRTrackData getMSRTrackData()
   :outertype: MSROperationResult

   返回磁条卡数据。

   :return: 磁条卡数据对象。

   **See also:** :java:ref:`MSRTrackData`

