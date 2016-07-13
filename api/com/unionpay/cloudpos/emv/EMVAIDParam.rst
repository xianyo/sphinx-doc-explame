.. java:import:: java.util Map

EMVAIDParam
===========

.. java:package:: com.unionpay.cloudpos.emv
   :noindex:

.. java:type:: public class EMVAIDParam

Methods
-------
getAID
^^^^^^

.. java:method:: public String getAID()
   :outertype: EMVAIDParam

   获取AID。

   :return: AID 。

getAcquierId
^^^^^^^^^^^^

.. java:method:: public String getAcquierId()
   :outertype: EMVAIDParam

   获取收单行标志。

   :return: 收单行标志 。

getDDOL
^^^^^^^

.. java:method:: public String getDDOL()
   :outertype: EMVAIDParam

   获取终端缺省DDOL。

   :return: 终端缺省DDOL。

getECTTLVal
^^^^^^^^^^^

.. java:method:: public long getECTTLVal()
   :outertype: EMVAIDParam

   获取电子现金终端交易限额。

   :return: 电子现金终端交易限额 。

getExtField
^^^^^^^^^^^

.. java:method:: public Map<String, Object> getExtField()
   :outertype: EMVAIDParam

   获取扩展域。

   :return: 扩展域 。

getFloorLimit
^^^^^^^^^^^^^

.. java:method:: public long getFloorLimit()
   :outertype: EMVAIDParam

   获取最低限额。

   :return: 最低限额 。

getMaxTargetPer
^^^^^^^^^^^^^^^

.. java:method:: public int getMaxTargetPer()
   :outertype: EMVAIDParam

   获取最大目标百分比数。

   :return: 最大目标百分比数。

getRdCVMLmt
^^^^^^^^^^^

.. java:method:: public long getRdCVMLmt()
   :outertype: EMVAIDParam

   获取读卡器非接触CVM限额。

   :return: 读卡器非接触CVM限额 。

getRdClssFLmt
^^^^^^^^^^^^^

.. java:method:: public long getRdClssFLmt()
   :outertype: EMVAIDParam

   获取读卡器非接触脱机最低限额。

   :return: 读卡器非接触脱机最低限额 。

getRdClssTxnLmt
^^^^^^^^^^^^^^^

.. java:method:: public long getRdClssTxnLmt()
   :outertype: EMVAIDParam

   获取读卡器非接触交易限额。

   :return: 读卡器非接触交易限额 。

getRiskManageData
^^^^^^^^^^^^^^^^^

.. java:method:: public String getRiskManageData()
   :outertype: EMVAIDParam

   获取风险管理数据。

   :return: 风险管理数据 。

getSelFlag
^^^^^^^^^^

.. java:method:: public int getSelFlag()
   :outertype: EMVAIDParam

   获取选择标志。

   :return: 选择标志 。

getTDOL
^^^^^^^

.. java:method:: public String getTDOL()
   :outertype: EMVAIDParam

   获取终端缺省TDOL。

   :return: 终端缺省TDOL 。

getTacDefault
^^^^^^^^^^^^^

.. java:method:: public String getTacDefault()
   :outertype: EMVAIDParam

   获取终端行为代码（缺省）。

   :return: 终端行为代码（缺省） 。

getTacDenial
^^^^^^^^^^^^

.. java:method:: public String getTacDenial()
   :outertype: EMVAIDParam

   获取终端行为代码（拒绝）。

   :return: 终端行为代码（拒绝） 。

getTacOnline
^^^^^^^^^^^^

.. java:method:: public String getTacOnline()
   :outertype: EMVAIDParam

   获取终端行为代码（联机）。

   :return: 终端行为代码（联机） 。

getTargetPer
^^^^^^^^^^^^

.. java:method:: public int getTargetPer()
   :outertype: EMVAIDParam

   获取目标百分比数。

   :return: 目标百分比数 。

getThreshold
^^^^^^^^^^^^

.. java:method:: public long getThreshold()
   :outertype: EMVAIDParam

   获取阀值。

   :return: 阀值 。

getVersion
^^^^^^^^^^

.. java:method:: public String getVersion()
   :outertype: EMVAIDParam

   获取应用版本。

   :return: 应用版本 。

isECTTLFlg
^^^^^^^^^^

.. java:method:: public boolean isECTTLFlg()
   :outertype: EMVAIDParam

   获取TTL是否存在。

   :return: TTL是否存在 。

isFloorlimitCheck
^^^^^^^^^^^^^^^^^

.. java:method:: public boolean isFloorlimitCheck()
   :outertype: EMVAIDParam

   获取是否检查最低限额。

   :return: 是否检查最低限额 。

isOnlinePin
^^^^^^^^^^^

.. java:method:: public boolean isOnlinePin()
   :outertype: EMVAIDParam

   获取终端联机PIN支持能力。

   :return: 终端联机PIN支持能力 。

isRandTransSel
^^^^^^^^^^^^^^

.. java:method:: public boolean isRandTransSel()
   :outertype: EMVAIDParam

   获取是否进行随机交易选择。

   :return: 是否进行随机交易选择 。

isRdCVMLmtFlg
^^^^^^^^^^^^^

.. java:method:: public boolean isRdCVMLmtFlg()
   :outertype: EMVAIDParam

   获取是否存在读卡器非接触CVM限额。

   :return: 是否存在读卡器非接触CVM限额 。

isRdClssFLmtFlg
^^^^^^^^^^^^^^^

.. java:method:: public boolean isRdClssFLmtFlg()
   :outertype: EMVAIDParam

   获取是否存在读卡器非接触脱机最低限额。

   :return: 是否存在读卡器非接触脱机最低限额 。

isRdClssTxnLmtFlg
^^^^^^^^^^^^^^^^^

.. java:method:: public boolean isRdClssTxnLmtFlg()
   :outertype: EMVAIDParam

   获取是否存在读卡器非接触交易限额。

   :return: 是否存在读卡器非接触交易限额 。

isVelocityCheck
^^^^^^^^^^^^^^^

.. java:method:: public boolean isVelocityCheck()
   :outertype: EMVAIDParam

   获取是否进行频度检测。

   :return: 是否进行频度检测 。

setAID
^^^^^^

.. java:method:: public void setAID(String aID)
   :outertype: EMVAIDParam

   设置AID。

   :param aID: AID。

setAcquierId
^^^^^^^^^^^^

.. java:method:: public void setAcquierId(String acquierId)
   :outertype: EMVAIDParam

   设置收单行标志。

   :param acquierId: 收单行标志。

setDDOL
^^^^^^^

.. java:method:: public void setDDOL(String dDOL)
   :outertype: EMVAIDParam

   设置终端缺省DDOL。

   :param dDOL: 终端缺省DDOL。

setECTTLFlg
^^^^^^^^^^^

.. java:method:: public void setECTTLFlg(boolean eCTTLFlg)
   :outertype: EMVAIDParam

   设置TTL是否存在。

   :param eCTTLFlg: TTL是否存在。

setECTTLVal
^^^^^^^^^^^

.. java:method:: public void setECTTLVal(long eCTTLVal)
   :outertype: EMVAIDParam

   设置电子现金终端交易限额。

   :param eCTTLVal: 电子现金终端交易限额。

setExtField
^^^^^^^^^^^

.. java:method:: public void setExtField(Map<String, Object> extField)
   :outertype: EMVAIDParam

   设置扩展域。

   :param extField: 扩展域。

setFloorLimit
^^^^^^^^^^^^^

.. java:method:: public void setFloorLimit(long floorLimit)
   :outertype: EMVAIDParam

   设置最低限额。

   :param floorLimit: 最低限额。

setFloorlimitCheck
^^^^^^^^^^^^^^^^^^

.. java:method:: public void setFloorlimitCheck(boolean floorlimitCheck)
   :outertype: EMVAIDParam

   设置是否检查最低限额。

   :param floorlimitCheck: 是否检查最低限额。

setMaxTargetPer
^^^^^^^^^^^^^^^

.. java:method:: public void setMaxTargetPer(int maxTargetPer)
   :outertype: EMVAIDParam

   设置最大目标百分比数。

   :param maxTargetPer: 最大目标百分比数。

setOnlinePin
^^^^^^^^^^^^

.. java:method:: public void setOnlinePin(boolean onlinePin)
   :outertype: EMVAIDParam

   设置终端联机PIN支持能力。

   :param onlinePin: 终端联机PIN支持能力。

setRandTransSel
^^^^^^^^^^^^^^^

.. java:method:: public void setRandTransSel(boolean randTransSel)
   :outertype: EMVAIDParam

   设置是否进行随机交易选择。

   :param randTransSel: 是否进行随机交易选择。

setRdCVMLmt
^^^^^^^^^^^

.. java:method:: public void setRdCVMLmt(long rdCVMLmt)
   :outertype: EMVAIDParam

   设置读卡器非接触CVM限额。

   :param rdCVMLmt: 读卡器非接触CVM限额。

setRdCVMLmtFlg
^^^^^^^^^^^^^^

.. java:method:: public void setRdCVMLmtFlg(boolean rdCVMLmtFlg)
   :outertype: EMVAIDParam

   设置是否存在读卡器非接触CVM限额。

   :param rdCVMLmtFlg: 是否存在读卡器非接触CVM限额。

setRdClssFLmt
^^^^^^^^^^^^^

.. java:method:: public void setRdClssFLmt(long rdClssFLmt)
   :outertype: EMVAIDParam

   设置读卡器非接触脱机最低限额。

   :param rdClssFLmt: 读卡器非接触脱机最低限额。

setRdClssFLmtFlg
^^^^^^^^^^^^^^^^

.. java:method:: public void setRdClssFLmtFlg(boolean rdClssFLmtFlg)
   :outertype: EMVAIDParam

   设置是否存在读卡器非接触脱机最低限额。

   :param rdClssFLmtFlg: 是否存在读卡器非接触脱机最低限额。

setRdClssTxnLmt
^^^^^^^^^^^^^^^

.. java:method:: public void setRdClssTxnLmt(long rdClssTxnLmt)
   :outertype: EMVAIDParam

   设置读卡器非接触交易限额。

   :param rdClssTxnLmt: 读卡器非接触交易限额。

setRdClssTxnLmtFlg
^^^^^^^^^^^^^^^^^^

.. java:method:: public void setRdClssTxnLmtFlg(boolean rdClssTxnLmtFlg)
   :outertype: EMVAIDParam

   设置是否存在读卡器非接触交易限额。

   :param rdClssTxnLmtFlg: 是否存在读卡器非接触交易限额。

setRiskManageData
^^^^^^^^^^^^^^^^^

.. java:method:: public void setRiskManageData(String riskManageData)
   :outertype: EMVAIDParam

   设置风险管理数据。

   :param riskManageData: 风险管理数据。

setSelFlag
^^^^^^^^^^

.. java:method:: public void setSelFlag(int selFlag)
   :outertype: EMVAIDParam

   设置选择标志。

   :param selFlag: 选择标志。

setTDOL
^^^^^^^

.. java:method:: public void setTDOL(String tDOL)
   :outertype: EMVAIDParam

   设置终端缺省TDOL。

   :param tDOL: 终端缺省TDOL。

setTacDefault
^^^^^^^^^^^^^

.. java:method:: public void setTacDefault(String tacDefault)
   :outertype: EMVAIDParam

   设置终端行为代码（缺省）。

   :param tacDefault: 设置终端行为代码（缺省）。

setTacDenial
^^^^^^^^^^^^

.. java:method:: public void setTacDenial(String tacDenial)
   :outertype: EMVAIDParam

   设置获取终端行为代码（拒绝）。

   :param tacDenial: 获取终端行为代码（拒绝）。

setTacOnline
^^^^^^^^^^^^

.. java:method:: public void setTacOnline(String tacOnline)
   :outertype: EMVAIDParam

   设置终端行为代码（联机）。

   :param tacOnline: 终端行为代码（联机）。

setTargetPer
^^^^^^^^^^^^

.. java:method:: public void setTargetPer(int targetPer)
   :outertype: EMVAIDParam

   设置目标百分比数。

   :param targetPer: 目标百分比数。

setThreshold
^^^^^^^^^^^^

.. java:method:: public void setThreshold(long threshold)
   :outertype: EMVAIDParam

   设置阀值。

   :param threshold: 阀值。

setVelocityCheck
^^^^^^^^^^^^^^^^

.. java:method:: public void setVelocityCheck(boolean velocityCheck)
   :outertype: EMVAIDParam

   设置是否进行频度检测。

   :param velocityCheck: 是否进行频度检测。

setVersion
^^^^^^^^^^

.. java:method:: public void setVersion(String version)
   :outertype: EMVAIDParam

   设置应用版本。

   :param version: 应用版本。

