��                           &     #   D  �   h  �   �  �   u       �   .  $   �     �     �     �                     0     <     I     W  3   g     �     �     �  r   �  f   V  K   �  f   	     p     �     �  f   �  r     �  �  &   
  #   6
  �   Z
  �   �
  �   g       �      $   �     �     �     �     �               "     .     ;     I  3   Y     �     �     �  r   �  f   H  K   �  f   �     b     ~     �  f   �  r      **See also:** :java:ref:`OnlineResult` **See also:** :java:ref:`PINResult` 0（\ :java:ref:`EMVConstants.App_Confirm_OK`\ ） 确认； -1（\ :java:ref:`EMVConstants.App_Confirm_Cancel`\ ）：取消。 0（\ :java:ref:`EMVConstants.Process_Result_Approve`\ ）：批准；1（\ :java:ref:`EMVConstants.Process_Result_Refuse`\ ）：拒绝。 >=0所选择的应用索引；-1（\ :java:ref:`EMVConstants.App_Confirm_Cancel`\ ）： 取消； -2（\ :java:ref:`EMVConstants.App_Confirm_Failure`\ ）：失败。 EMVTransListener EMV交易监听器，应用通过监听器得到需要的数据，处理确认之后，通过返回值，告诉EMV流程进入下一步。 EMV底层返回应用列表集合。 Methods OnlineResult。 PINResult。 onCardHolderPwd onCertVerfiy onConfirmCardNo onConfirmEC onOnlineProc onTransResult onWaitAppSelect 交易结果，应用获得交易的返回结果。 待确认卡号。 是否第一次选择应用。 是否联机交易。 确认使用电子现金，由应用设置结果返回值，EMVSDK实现判断返回值，进入流程下一步。 确认卡号，由应用设置结果返回值，EMVSDK实现判断返回值，进入流程下一步。 等待应用选择，EMVSDK实现判断返回值，进入流程下一步。 联机交易，由应用设置联机结果，EMVSDK实现判断联机结果，进入流程下一步。 脱机密码剩余次数。 证件内容。 证件类型。 身份认证，由应用设置结果返回值，EMVSDK实现判断返回值，进入流程下一步。 输入密码，由应用设置结果及脱机密码返回，EMVSDK实现判断返回值，进入流程下一步。 Project-Id-Version: Sphinx-doc 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-13 18:05+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hans_CN
Language-Team: zh_Hans_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 **See also:** :java:ref:`OnlineResult` **See also:** :java:ref:`PINResult` 0（\ :java:ref:`EMVConstants.App_Confirm_OK`\ ） 确认； -1（\ :java:ref:`EMVConstants.App_Confirm_Cancel`\ ）：取消。 0（\ :java:ref:`EMVConstants.Process_Result_Approve`\ ）：批准；1（\ :java:ref:`EMVConstants.Process_Result_Refuse`\ ）：拒绝。 >=0所选择的应用索引；-1（\ :java:ref:`EMVConstants.App_Confirm_Cancel`\ ）： 取消； -2（\ :java:ref:`EMVConstants.App_Confirm_Failure`\ ）：失败。 EMVTransListener EMV交易监听器，应用通过监听器得到需要的数据，处理确认之后，通过返回值，告诉EMV流程进入下一步。 EMV底层返回应用列表集合。 Methods OnlineResult。 PINResult。 onCardHolderPwd onCertVerfiy onConfirmCardNo onConfirmEC onOnlineProc onTransResult onWaitAppSelect 交易结果，应用获得交易的返回结果。 待确认卡号。 是否第一次选择应用。 是否联机交易。 确认使用电子现金，由应用设置结果返回值，EMVSDK实现判断返回值，进入流程下一步。 确认卡号，由应用设置结果返回值，EMVSDK实现判断返回值，进入流程下一步。 等待应用选择，EMVSDK实现判断返回值，进入流程下一步。 联机交易，由应用设置联机结果，EMVSDK实现判断联机结果，进入流程下一步。 脱机密码剩余次数。 证件内容。 证件类型。 身份认证，由应用设置结果返回值，EMVSDK实现判断返回值，进入流程下一步。 输入密码，由应用设置结果及脱机密码返回，EMVSDK实现判断返回值，进入流程下一步。 