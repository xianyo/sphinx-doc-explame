.. java:import:: android.graphics Bitmap

IDCard
======

.. java:package:: com.unionpay.cloudpos.idcardreader
   :noindex:

.. java:type:: public class IDCard

   本接口主要用于表示身份证

Constructors
------------
IDCard
^^^^^^

.. java:constructor:: public IDCard(String name, String sex, String nation, String birthday, String address, String idcardno, String grantdept, String validFromDate, String validToDate, String reserved, Bitmap bitmap)
   :outertype: IDCard

Methods
-------
getAddress
^^^^^^^^^^

.. java:method:: public String getAddress()
   :outertype: IDCard

   获取地址

   :return: 地址

getBorn
^^^^^^^

.. java:method:: public String getBorn()
   :outertype: IDCard

   获取出生日期

   :return: 出生日期

getGrantDept
^^^^^^^^^^^^

.. java:method:: public String getGrantDept()
   :outertype: IDCard

   获取颁发部门

   :return: 颁发部门

getIDCardNo
^^^^^^^^^^^

.. java:method:: public String getIDCardNo()
   :outertype: IDCard

   获取身份证号

   :return: 身份证号

getName
^^^^^^^

.. java:method:: public String getName()
   :outertype: IDCard

   获取姓名

   :return: 姓名

getNation
^^^^^^^^^

.. java:method:: public String getNation()
   :outertype: IDCard

   获取国籍

   :return: 国籍

getPicture
^^^^^^^^^^

.. java:method:: public Bitmap getPicture()
   :outertype: IDCard

   获取对加密数据解密后的身份证相片

   :return: 对加密数据解密后的身份证相片

getReserved
^^^^^^^^^^^

.. java:method:: public String getReserved()
   :outertype: IDCard

   获取其他保留信息

   :return: 其他保留信息

getSex
^^^^^^

.. java:method:: public String getSex()
   :outertype: IDCard

   获取性别

   :return: 性别

getValidFromDate
^^^^^^^^^^^^^^^^

.. java:method:: public String getValidFromDate()
   :outertype: IDCard

   获取有效期开始日期

   :return: 有效期开始日期

getValidToDate
^^^^^^^^^^^^^^

.. java:method:: public String getValidToDate()
   :outertype: IDCard

   获取有效期结束日期

   :return: 有效期结束日期

