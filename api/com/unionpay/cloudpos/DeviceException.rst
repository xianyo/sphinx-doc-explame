DeviceException
===============

.. java:package:: com.unionpay.cloudpos
   :noindex:

.. java:type:: public class DeviceException extends Exception

   设备在操作过程中如果遇到错误会抛出异常。

   这是一个轻量级的类每次被使用时由接口实现者创建，使用后直接丢弃。 不会被反复使用，所以所有的状态只在构造函数中设置。

   每一个异常通过code标识发生异常的原因。具体请看code常量的描述。

Fields
------
ARGUMENT_EXCEPTION
^^^^^^^^^^^^^^^^^^

.. java:field:: public static final int ARGUMENT_EXCEPTION
   :outertype: DeviceException

   方法参数错误。

BAD_CONTROL_MODE
^^^^^^^^^^^^^^^^

.. java:field:: public static final int BAD_CONTROL_MODE
   :outertype: DeviceException

   设备device没有处于合适的状态，比如：

   ..

   * 如果设备在已经open的情况下，使用者再次调用了\ ``open()``\ 方法。
   * 如果设备在没有open的情况下，使用者调用了设备任何一个设备操作方法。
   * 某些设备的一些方法，在不合适的情况下被调用了。具体看每个设备的方法定义。

GENERAL_EXCEPTION
^^^^^^^^^^^^^^^^^

.. java:field:: public static final int GENERAL_EXCEPTION
   :outertype: DeviceException

   其他未定义的错误。可以通过message获得更多信息。

NO_IMPLEMENT
^^^^^^^^^^^^

.. java:field:: public static final int NO_IMPLEMENT
   :outertype: DeviceException

   设备不支持该功能的调用:

NO_PERMISSION
^^^^^^^^^^^^^

.. java:field:: public static final int NO_PERMISSION
   :outertype: DeviceException

   用户没有权限调用这个方法。

NO_REQUEST_PENDING
^^^^^^^^^^^^^^^^^^

.. java:field:: public static final int NO_REQUEST_PENDING
   :outertype: DeviceException

   当用户调用\ ``cancelRequest``\ 的时候，没有异步方法正在被执行。

REQUEST_PENDING
^^^^^^^^^^^^^^^

.. java:field:: public static final int REQUEST_PENDING
   :outertype: DeviceException

   ..

   * 一个异步方法还在执行中，调用了非\ ``cancelRequest``\ 方法，\ ``open()``\ 方法除外（这种情况下应该是是BAD_CONTROL_MODE）。

Constructors
------------
DeviceException
^^^^^^^^^^^^^^^

.. java:constructor:: public DeviceException(int code)
   :outertype: DeviceException

   构造一个\ ``DeviceException``\

   :param code: 是在\ **DeviceException**\ 中定义的常量。

DeviceException
^^^^^^^^^^^^^^^

.. java:constructor:: public DeviceException(String message)
   :outertype: DeviceException

   构造一个未定义错误。

   :param message: 错误信息

DeviceException
^^^^^^^^^^^^^^^

.. java:constructor:: public DeviceException(int code, String message)
   :outertype: DeviceException

DeviceException
^^^^^^^^^^^^^^^

.. java:constructor:: public DeviceException(Throwable throwable)
   :outertype: DeviceException

   根据指定的原因和 (cause==null ? null : cause.toString()) 的详细消息构造新异常（它通常包含 cause 的类和详细消息）。。

   :param throwable: 原因（保存此原因，以便以后通过Throwable.getCause() 方法获取它）。

DeviceException
^^^^^^^^^^^^^^^

.. java:constructor:: public DeviceException(int code, String message, Throwable throwable)
   :outertype: DeviceException

   构造一个包含合适code、详细消息和原因的新异常。

   :param code: 是在\ **DeviceException**\ 中定义的常量。
   :param message: 错误信息
   :param throwable: 原因（保存此原因，以便以后通过Throwable.getCause() 方法获取它）。

Methods
-------
getCode
^^^^^^^

.. java:method:: public final int getCode()
   :outertype: DeviceException

   返回异常code

   :return: 返回一个在\ **DeviceException**\ 中定义的常量

toString
^^^^^^^^

.. java:method:: public String toString()
   :outertype: DeviceException

   返回此异常的简短描述。

