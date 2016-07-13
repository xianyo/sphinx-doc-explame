��          |               �      �      �      �      �   K     �   W  �   �     �  �   �  k   �  �   �  �  �     '     0     8     H  K   U  �   �  �   D     �  �   �  k   �  �   B	   MSRUtils Methods \ **MSRUtils**\ waitForSwipe 只有当超时发生或者操作正常完成，本次调用才会返回。 在方法中先调用\ :java:ref:`open() <MSRDevice.open()>`\ ，然后调用\ :java:ref:`waitForSwipe(int) <MSRDevice.waitForSwipe(int)>`\  等待用户刷卡。 如果超时发生，会返回null，同时关闭该设备。 如果返回MSROperationResult，开发者后续自行关闭该设备。 操作结果。 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。 由于带有超时，本方法会响应\ :java:ref:`cancelRequest() <MSRDevice.cancelRequest()>`\ 方法。 集成了对磁条卡阅读器设备的使用，用户在不关心接口含义的情况下，可以调用waitForSwipe方法，然后继续刷卡操作就可以了。 Project-Id-Version: Sphinx-doc 1.0
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
 MSRUtils Methods \ **MSRUtils**\ waitForSwipe 只有当超时发生或者操作正常完成，本次调用才会返回。 在方法中先调用\ :java:ref:`open() <MSRDevice.open()>`\ ，然后调用\ :java:ref:`waitForSwipe(int) <MSRDevice.waitForSwipe(int)>`\  等待用户刷卡。 如果超时发生，会返回null，同时关闭该设备。 如果返回MSROperationResult，开发者后续自行关闭该设备。 操作结果。 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。 由于带有超时，本方法会响应\ :java:ref:`cancelRequest() <MSRDevice.cancelRequest()>`\ 方法。 集成了对磁条卡阅读器设备的使用，用户在不关心接口含义的情况下，可以调用waitForSwipe方法，然后继续刷卡操作就可以了。 