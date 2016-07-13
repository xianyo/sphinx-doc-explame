.. java:import:: com.unionpay.cloudpos AlgorithmConstants

KeyInfo
=======

.. java:package:: com.unionpay.cloudpos.pinpad
   :noindex:

.. java:type:: public class KeyInfo

   为后续的加密操作选择密钥和算法。

Fields
------
algorithm
^^^^^^^^^

.. java:field:: public int algorithm
   :outertype: KeyInfo

   算法：algorithm 具体定义参考\ :java:ref:`ALG_DES <AlgorithmConstants>`\  or \ :java:ref:`ALG_3DES <AlgorithmConstants>`\

keyID
^^^^^

.. java:field:: public int keyID
   :outertype: KeyInfo

   密钥索引。

   如果在密钥类型是主密钥/会话密钥\ :java:ref:`KEY_TYPE_MK_SK <PINPadDevice>`\ 情况下，只能使用以下常量：\ :java:ref:`USER_KEY_ID_PIN <PINPadDevice>`\ , \ :java:ref:`USER_KEY_ID_MAC <PINPadDevice>`\ ，\ :java:ref:`USER_KEY_ID_DATA <PINPadDevice>`\

   如果密钥类型是其他三种，表示选定的密钥索引。

keyType
^^^^^^^

.. java:field:: public int keyType
   :outertype: KeyInfo

   密钥类型：\ :java:ref:`KEY_TYPE_DUKPT <PINPadDevice>`\ , \ :java:ref:`KEY_TYPE_TDUKPT <PINPadDevice>`\ , \ :java:ref:`KEY_TYPE_MK_SK <PINPadDevice>`\ , \ :java:ref:`KEY_TYPE_FIX <PINPadDevice>`\

masterKeyID
^^^^^^^^^^^

.. java:field:: public int masterKeyID
   :outertype: KeyInfo

   主密钥索引[0x00, ..., 0x09]，仅在密钥类型是主密钥/会话密钥\ :java:ref:`KEY_TYPE_MK_SK <PINPadDevice>`\ 的前提下有效

Constructors
------------
KeyInfo
^^^^^^^

.. java:constructor:: public KeyInfo(int keyType, int masterKeyID, int keyID, int algorithm)
   :outertype: KeyInfo

