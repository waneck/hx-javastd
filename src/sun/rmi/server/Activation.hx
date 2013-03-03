package sun.rmi.server;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class Activation implements java.io.Serializable
{
	/**
	* Main program to start the activation system. <br>
	* The usage is as follows: rmid [-port num] [-log dir].
	*/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	
}
@:native('sun$rmi$server$Activation$SystemRegistryImpl') @:internal extern class Activation_SystemRegistryImpl extends sun.rmi.registry.RegistryImpl
{
	/**
	* Returns the activation system stub if the specified name
	* matches the activation system's class name, otherwise
	* returns the result of invoking super.lookup with the specified
	* name.
	*/
	@:overload @:public override public function lookup(name : String) : java.rmi.Remote;
	
	@:overload @:public override public function list() : java.NativeArray<String>;
	
	@:overload @:public override public function bind(name : String, obj : java.rmi.Remote) : Void;
	
	@:overload @:public override public function unbind(name : String) : Void;
	
	@:overload @:public override public function rebind(name : String, obj : java.rmi.Remote) : Void;
	
	
}
@:native('sun$rmi$server$Activation$ActivatorImpl') @:internal extern class Activation_ActivatorImpl extends java.rmi.server.RemoteServer implements java.rmi.activation.Activator
{
	@:overload @:public public function activate(id : java.rmi.activation.ActivationID, force : Bool) : java.rmi.MarshalledObject<java.rmi.Remote>;
	
	
}
@:native('sun$rmi$server$Activation$ActivationMonitorImpl') @:internal extern class Activation_ActivationMonitorImpl extends java.rmi.server.UnicastRemoteObject implements java.rmi.activation.ActivationMonitor
{
	@:overload @:public public function inactiveObject(id : java.rmi.activation.ActivationID) : Void;
	
	@:overload @:public public function activeObject(id : java.rmi.activation.ActivationID, mobj : java.rmi.MarshalledObject<java.rmi.Remote>) : Void;
	
	@:overload @:public public function inactiveGroup(id : java.rmi.activation.ActivationGroupID, incarnation : haxe.Int64) : Void;
	
	
}
@:native('sun$rmi$server$Activation$ActivationSystemImpl') @:internal extern class Activation_ActivationSystemImpl extends java.rmi.server.RemoteServer implements java.rmi.activation.ActivationSystem
{
	@:overload @:public public function registerObject(desc : java.rmi.activation.ActivationDesc) : java.rmi.activation.ActivationID;
	
	@:overload @:public public function unregisterObject(id : java.rmi.activation.ActivationID) : Void;
	
	@:overload @:public public function registerGroup(desc : java.rmi.activation.ActivationGroupDesc) : java.rmi.activation.ActivationGroupID;
	
	@:overload @:public public function activeGroup(id : java.rmi.activation.ActivationGroupID, group : java.rmi.activation.ActivationInstantiator, incarnation : haxe.Int64) : java.rmi.activation.ActivationMonitor;
	
	@:overload @:public public function unregisterGroup(id : java.rmi.activation.ActivationGroupID) : Void;
	
	@:overload @:public public function setActivationDesc(id : java.rmi.activation.ActivationID, desc : java.rmi.activation.ActivationDesc) : java.rmi.activation.ActivationDesc;
	
	@:overload @:public public function setActivationGroupDesc(id : java.rmi.activation.ActivationGroupID, desc : java.rmi.activation.ActivationGroupDesc) : java.rmi.activation.ActivationGroupDesc;
	
	@:overload @:public public function getActivationDesc(id : java.rmi.activation.ActivationID) : java.rmi.activation.ActivationDesc;
	
	@:overload @:public public function getActivationGroupDesc(id : java.rmi.activation.ActivationGroupID) : java.rmi.activation.ActivationGroupDesc;
	
	/**
	* Shutdown the activation system. Destroys all groups spawned by
	* the activation daemon and exits the activation daemon.
	*/
	@:overload @:public public function shutdown() : Void;
	
	
}
/**
* Thread to shutdown rmid.
*/
@:native('sun$rmi$server$Activation$Shutdown') @:internal extern class Activation_Shutdown extends java.lang.Thread
{
	@:overload @:public override public function run() : Void;
	
	
}
/** Thread to destroy children in the event of abnormal termination. */
@:native('sun$rmi$server$Activation$ShutdownHook') @:internal extern class Activation_ShutdownHook extends java.lang.Thread
{
	@:overload @:public override public function run() : Void;
	
	
}
/**
* Container for group information: group's descriptor, group's
* instantiator, flag to indicate pending group creation, and
* table of the group's actived objects.
*
* WARNING: GroupEntry objects should not be written into log file
* updates.  GroupEntrys are inner classes of Activation and they
* can not be serialized independent of this class.  If the
* complete Activation system is written out as a log update, the
* point of having updates is nullified.
*/
@:native('sun$rmi$server$Activation$GroupEntry') @:internal extern class Activation_GroupEntry implements java.io.Serializable
{
	
}
/**
* Waits for process termination and then restarts services.
*/
@:native('sun$rmi$server$Activation$GroupEntry$Watchdog') @:internal extern class Activation_GroupEntry_Watchdog extends java.lang.Thread
{
	@:overload @:public override public function run() : Void;
	
	
}
@:native('sun$rmi$server$Activation$ObjectEntry') @:internal extern class Activation_ObjectEntry implements java.io.Serializable
{
	
}
/**
* Handler for the log that knows how to take the initial snapshot
* and apply an update (a LogRecord) to the current state.
*/
@:native('sun$rmi$server$Activation$ActLogHandler') @:internal extern class Activation_ActLogHandler extends sun.rmi.log.LogHandler
{
	@:overload @:public override public function initialSnapshot() : Dynamic;
	
	@:overload @:public override public function applyUpdate(update : Dynamic, state : Dynamic) : Dynamic;
	
	
}
/**
* Abstract class for all log records. The subclass contains
* specific update information and implements the apply method
* that applys the update information contained in the record
* to the current state.
*/
@:native('sun$rmi$server$Activation$LogRecord') @:internal extern class Activation_LogRecord implements java.io.Serializable
{
	
}
/**
* Log record for registering an object.
*/
@:native('sun$rmi$server$Activation$LogRegisterObject') @:internal extern class Activation_LogRegisterObject extends sun.rmi.server.Activation.Activation_LogRecord
{
	
}
/**
* Log record for unregistering an object.
*/
@:native('sun$rmi$server$Activation$LogUnregisterObject') @:internal extern class Activation_LogUnregisterObject extends sun.rmi.server.Activation.Activation_LogRecord
{
	
}
/**
* Log record for registering a group.
*/
@:native('sun$rmi$server$Activation$LogRegisterGroup') @:internal extern class Activation_LogRegisterGroup extends sun.rmi.server.Activation.Activation_LogRecord
{
	
}
/**
* Log record for udpating an activation desc
*/
@:native('sun$rmi$server$Activation$LogUpdateDesc') @:internal extern class Activation_LogUpdateDesc extends sun.rmi.server.Activation.Activation_LogRecord
{
	
}
/**
* Log record for unregistering a group.
*/
@:native('sun$rmi$server$Activation$LogUpdateGroupDesc') @:internal extern class Activation_LogUpdateGroupDesc extends sun.rmi.server.Activation.Activation_LogRecord
{
	
}
/**
* Log record for unregistering a group.
*/
@:native('sun$rmi$server$Activation$LogUnregisterGroup') @:internal extern class Activation_LogUnregisterGroup extends sun.rmi.server.Activation.Activation_LogRecord
{
	
}
/**
* Log record for an active group incarnation
*/
@:native('sun$rmi$server$Activation$LogGroupIncarnation') @:internal extern class Activation_LogGroupIncarnation extends sun.rmi.server.Activation.Activation_LogRecord
{
	
}
/**
* The default policy for checking a command before it is executed
* makes sure the appropriate com.sun.rmi.rmid.ExecPermission and
* set of com.sun.rmi.rmid.ExecOptionPermissions have been granted.
*/
@:native('sun$rmi$server$Activation$DefaultExecPolicy') extern class Activation_DefaultExecPolicy
{
	@:overload @:public public function checkExecCommand(desc : java.rmi.activation.ActivationGroupDesc, cmd : java.NativeArray<String>) : Void;
	
	
}
/**
* A server socket factory to use when rmid is launched via 'inetd'
* with 'wait' status.  This socket factory's 'createServerSocket'
* method returns the server socket specified during construction that
* is specialized to delay accepting requests until the
* 'initDone' flag is 'true'.  The server socket supplied to
* the constructor should be the server socket obtained from the
* ServerSocketChannel returned from the 'System.inheritedChannel'
* method.
**/
@:native('sun$rmi$server$Activation$ActivationServerSocketFactory') @:internal extern class Activation_ActivationServerSocketFactory implements java.rmi.server.RMIServerSocketFactory
{
	/**
	* Returns the server socket specified during construction wrapped
	* in a 'DelayedAcceptServerSocket'.
	**/
	@:overload @:public public function createServerSocket(port : Int) : java.net.ServerSocket;
	
	
}
/**
* A server socket that delegates all public methods to the underlying
* server socket specified at construction.  The accept method is
* overridden to delay calling accept on the underlying server socket
* until the 'initDone' flag is 'true'.
**/
@:native('sun$rmi$server$Activation$DelayedAcceptServerSocket') @:internal extern class Activation_DelayedAcceptServerSocket extends java.net.ServerSocket
{
	@:overload @:public override public function bind(endpoint : java.net.SocketAddress) : Void;
	
	@:overload @:public override public function bind(endpoint : java.net.SocketAddress, backlog : Int) : Void;
	
	@:overload @:public override public function getInetAddress() : java.net.InetAddress;
	
	@:overload @:public override public function getLocalPort() : Int;
	
	@:overload @:public override public function getLocalSocketAddress() : java.net.SocketAddress;
	
	/**
	* Delays calling accept on the underlying server socket until the
	* remote service is bound in the registry.
	**/
	@:overload @:public override public function accept() : java.net.Socket;
	
	@:overload @:public override public function close() : Void;
	
	@:overload @:public override public function getChannel() : java.nio.channels.ServerSocketChannel;
	
	@:overload @:public override public function isBound() : Bool;
	
	@:overload @:public override public function isClosed() : Bool;
	
	@:overload @:public override public function setSoTimeout(timeout : Int) : Void;
	
	@:overload @:public override public function getSoTimeout() : Int;
	
	@:overload @:public override public function setReuseAddress(on : Bool) : Void;
	
	@:overload @:public override public function getReuseAddress() : Bool;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function setReceiveBufferSize(size : Int) : Void;
	
	@:overload @:public override public function getReceiveBufferSize() : Int;
	
	
}
@:internal extern class PipeWriter implements java.lang.Runnable
{
	/**
	* Create a thread to listen and read from input stream, in.  buffer
	* the data that is read until a marker which equals lineSeparator
	* is read.  Once such a string has been discovered; write out an
	* annotation string followed by the buffered data and a line
	* separator.
	*/
	@:overload @:public public function run() : Void;
	
	
}
