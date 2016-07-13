MSRTrackData
============

.. java:package:: com.unionpay.cloudpos.msr
   :noindex:

.. java:type:: public interface MSRTrackData

   磁道数据对象。

Fields
------
LRC_ERROR
^^^^^^^^^

.. java:field::  int LRC_ERROR
   :outertype: MSRTrackData

   本磁道LRC错误。

   该常量通过\ ``getTrackError()``\ 返回。

NON_SPECIFIC_ERROR
^^^^^^^^^^^^^^^^^^

.. java:field::  int NON_SPECIFIC_ERROR
   :outertype: MSRTrackData

   不明原因错误。

   该常量通过\ ``getTrackError()``\ 返回。

NO_DATA
^^^^^^^

.. java:field::  int NO_DATA
   :outertype: MSRTrackData

   本磁道没有数据信息体，只有起始位。

   该常量通过\ ``getTrackError()``\ 返回。

NO_ERROR
^^^^^^^^

.. java:field::  int NO_ERROR
   :outertype: MSRTrackData

   没有错误。

   该常量通过\ ``getTrackError()``\ 返回。

NO_STRIPE
^^^^^^^^^

.. java:field::  int NO_STRIPE
   :outertype: MSRTrackData

   本磁道没有任何数据，包括起始位。

   该常量通过\ ``getTrackError()``\ 返回 。

PARITY_ERROR
^^^^^^^^^^^^

.. java:field::  int PARITY_ERROR
   :outertype: MSRTrackData

   本磁道奇偶校验错误。

   该常量通过\ ``getTrackError()``\ 返回。

READ_ERROR
^^^^^^^^^^

.. java:field::  int READ_ERROR
   :outertype: MSRTrackData

   本磁道读错误。

   该常量通过\ ``getTrackError()``\ 返回。

TRACK_NOT_SUPPORTED
^^^^^^^^^^^^^^^^^^^

.. java:field::  int TRACK_NOT_SUPPORTED
   :outertype: MSRTrackData

   不支持的磁道。

   该常量通过\ ``getTrackError()``\ 返回。

Methods
-------
getTrackData
^^^^^^^^^^^^

.. java:method::  byte[] getTrackData(int trackNo)
   :outertype: MSRTrackData

   返回磁道信息。

   \ *磁道信息参考：ISO 7811-2 and JIS X 6302.*\

   :return: 磁道信息数据。

getTrackError
^^^^^^^^^^^^^

.. java:method::  int getTrackError(int trackNo)
   :outertype: MSRTrackData

   返回本磁道的错误标识。

   :return: 上述定义的磁道错误常量。

   **See also:** :java:ref:`.NO_ERROR`, :java:ref:`.NON_SPECIFIC_ERROR`, :java:ref:`.TRACK_NOT_SUPPORTED`, :java:ref:`.READ_ERROR`, :java:ref:`.PARITY_ERROR`, :java:ref:`.LRC_ERROR`, :java:ref:`.NO_DATA`, :java:ref:`.NO_STRIPE`

