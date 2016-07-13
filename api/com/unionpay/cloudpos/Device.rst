Device
======

.. java:package:: com.unionpay.cloudpos
   :noindex:

.. java:type:: public interface Device

   \ **Device**\ 接口是所有设备的根类。所有的设备的接口 和实现类都必须继承至这个接口。

   所有的应用程序都使用各种\ **Device对象**\ 来操作各种设备。 每个设备只能同时被一个设备对象打开和使用。如果设备带有逻辑上的设备分类，每个逻辑上的设备分类也只能被被一个设备对象打开和使用。 例如磁条卡阅读器有不同卡槽，每个卡槽就相当于一个独占设备。

   以下情况是不允许的：

   ..

   * 设备对象已经打开了某个逻辑ID的设备，再去打开同一个逻辑ID或不同逻辑ID的设备。
   * 设备对象已经打开了某个逻辑ID的设备，另一个设备对象试图打开同一个逻辑ID的设备

   不同的设备对象打开不同逻辑ID的设备是可以的。 当然，也有些特殊设备可以被共享打开，比如安全模块的只读使用。 具体使用方法看相关设备的文档。

Methods
-------
cancelRequest
^^^^^^^^^^^^^

.. java:method::  void cancelRequest() throws DeviceException
   :outertype: Device

   该方法用于尝试取消一个正在执行的异步操作或带有timeout的同步操作。

   设备对象的每种方法对cancelRequest的响应不同，具体包括以下3种：

   ..

   #. 如果设备对象的某个方法参数中带有一个\ **listener**\ ，必须 响应 \ ``cancelRequest``\ 方法，并且放弃当前的操作。
   #. 如果设备对象的某个方法参数中带有一个\ **timeout**\ ，必须 响应 \ ``cancelRequest``\ 方法，并且放弃当前的操作。
   #. 其他方法我们视作同步方法，可以响应或者不响应cancelRequest方法，这个 需要根据每个设备具体情况和文档确定。

   总体上来说，异步方法必须响应cancelRequest方法，返回的异步操作结果状态是\ :java:ref:`CANCEL <OperationResult.CANCEL>`\ 。 如果没有异步方法正在被执行，cancelRequest就会抛出异常。

   :throws DeviceException: 包括以下code:

   ..

   * BAD_CONTROL_MODE - 如果该设备没有被open
   * NO_REQUEST_PENDING - 如果没有异步方法或带有timeout的同步请求正在执行

close
^^^^^

.. java:method::  void close() throws DeviceException
   :outertype: Device

   该方法用于断开设备对象和设备之间的连接。释放设备，让其他设备对象可以使用。

   该方法调用后，设备所有运行状态会被重置。比如：LED正在点亮，虽然close之前没有调用关闭接口， 在close方法调用是也会被同时关闭，

   一旦close了，只有重新open才能让这个设备对象和设备建立连接。

   如果已经打开设备的应用进程消失，则自动关闭对设备的占用。

   如果之前有异步请求，那么关闭设备，之前的异步请求自动取消。

   :throws DeviceException: 包括以下code:

   ..

   * BAD_CONTROL_MODE - 如果该设备没有被open

open
^^^^

.. java:method::  void open() throws DeviceException
   :outertype: Device

   设备对象使用默认ID打开设备，即建立与设备的连接。设备只有在打开之后才能进行后续的操作。

   没有调用设备对象的打开接口之前，调用设备对象的其他接口，会抛出异常\ :java:ref:`BAD_CONTROL_MODE <DeviceException.BAD_CONTROL_MODE>`\ 。

   同一个设备在打开之后，不能再次打开。否则会抛出异常\ :java:ref:`BAD_CONTROL_MODE <DeviceException.BAD_CONTROL_MODE>`\ 。如下两种情况是不允许的：

   ..

   * 一个设备对象在已经打开设备的情况下，试图再次打开该设备。
   * 不同设备对象试图打开同一个设备。

   但是，如果设备已经被关闭，那么任何设备对象都可以重新打开该设备。

   :throws DeviceException:

