package com.sun.jmx.snmp.daemon;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
//// java import
////
//// jmx import
////
//// JSR 160 import
////
//// XXX Revisit:
////   used to import com.sun.jmx.snmp.MBeanServerForwarder
//// Now using JSR 160 instead. => this is an additional
//// dependency to JSR 160.
////
/**
* Defines generic behavior for the server part of a connector or an adaptor.
* Most connectors or adaptors extend <CODE>CommunicatorServer</CODE>
* and inherit this behavior. Connectors or adaptors that do not fit into
* this model do not extend <CODE>CommunicatorServer</CODE>.
* <p>
* A <CODE>CommunicatorServer</CODE> is an active object, it listens for
* client requests  and processes them in its own thread. When necessary, a
* <CODE>CommunicatorServer</CODE> creates other threads to process multiple
* requests concurrently.
* <p>
* A <CODE>CommunicatorServer</CODE> object can be stopped by calling the
* <CODE>stop</CODE> method. When it is stopped, the
* <CODE>CommunicatorServer</CODE> no longer listens to client requests and
* no longer holds any thread or communication resources.
* It can be started again by calling the <CODE>start</CODE> method.
* <p>
* A <CODE>CommunicatorServer</CODE> has a <CODE>State</CODE> attribute
* which reflects its  activity.
* <p>
* <TABLE>
* <TR><TH>CommunicatorServer</TH>      <TH>State</TH></TR>
* <TR><TD><CODE>stopped</CODE></TD>    <TD><CODE>OFFLINE</CODE></TD></TR>
* <TR><TD><CODE>starting</CODE></TD>    <TD><CODE>STARTING</CODE></TD></TR>
* <TR><TD><CODE>running</CODE></TD>     <TD><CODE>ONLINE</CODE></TD></TR>
* <TR><TD><CODE>stopping</CODE></TD>     <TD><CODE>STOPPING</CODE></TD></TR>
* </TABLE>
* <p>
* The <CODE>STARTING</CODE> state marks the transition
* from <CODE>OFFLINE</CODE> to <CODE>ONLINE</CODE>.
* <p>
* The <CODE>STOPPING</CODE> state marks the transition from
* <CODE>ONLINE</CODE> to <CODE>OFFLINE</CODE>. This occurs when the
* <CODE>CommunicatorServer</CODE> is finishing or interrupting active
* requests.
* <p>
* When a <CODE>CommunicatorServer</CODE> is unregistered from the MBeanServer,
* it is stopped automatically.
* <p>
* When the value of the <CODE>State</CODE> attribute changes the
* <CODE>CommunicatorServer</CODE> sends a
* <tt>{@link javax.management.AttributeChangeNotification}</tt> to the
* registered listeners, if any.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class CommunicatorServer implements java.lang.Runnable.Runnable implements javax.management.MBeanRegistration.MBeanRegistration implements javax.management.NotificationBroadcaster.NotificationBroadcaster implements com.sun.jmx.snmp.daemon.CommunicatorServerMBean.CommunicatorServerMBean
{
	/**
	* Represents an <CODE>ONLINE</CODE> state.
	*/
	public static var ONLINE(default, null) : Int;
	
	/**
	* Represents an <CODE>OFFLINE</CODE> state.
	*/
	public static var OFFLINE(default, null) : Int;
	
	/**
	* Represents a <CODE>STOPPING</CODE> state.
	*/
	public static var STOPPING(default, null) : Int;
	
	/**
	* Represents a <CODE>STARTING</CODE> state.
	*/
	public static var STARTING(default, null) : Int;
	
	/**
	* Indicates that it is an SNMP connector type.
	*/
	public static var SNMP_TYPE(default, null) : Int;
	
	/**
	* Instantiates a <CODE>CommunicatorServer</CODE>.
	*
	* @param connectorType Indicates the connector type. Possible values are:
	* SNMP_TYPE.
	*
	* @exception <CODE>java.lang.IllegalArgumentException</CODE>
	*            This connector type is not correct.
	*/
	@:overload public function new(connectorType : Int) : Void;
	
	@:overload private function createMainThread() : java.lang.Thread.Thread;
	
	/**
	* Starts this <CODE>CommunicatorServer</CODE>.
	* <p>
	* Has no effect if this <CODE>CommunicatorServer</CODE> is
	* <CODE>ONLINE</CODE> or <CODE>STOPPING</CODE>.
	* @param timeout Time in ms to wait for the connector to start.
	*        If <code>timeout</code> is positive, wait for at most
	*        the specified time. An infinite timeout can be specified
	*        by passing a <code>timeout</code> value equals
	*        <code>Long.MAX_VALUE</code>. In that case the method
	*        will wait until the connector starts or fails to start.
	*        If timeout is negative or zero, returns as soon as possible
	*        without waiting.
	* @exception CommunicationException if the connectors fails to start.
	* @exception InterruptedException if the thread is interrupted or the
	*            timeout expires.
	*/
	@:overload public function start(timeout : haxe.Int64) : Void;
	
	/**
	* Starts this <CODE>CommunicatorServer</CODE>.
	* <p>
	* Has no effect if this <CODE>CommunicatorServer</CODE> is
	* <CODE>ONLINE</CODE> or <CODE>STOPPING</CODE>.
	*/
	@:overload public function start() : Void;
	
	/**
	* Stops this <CODE>CommunicatorServer</CODE>.
	* <p>
	* Has no effect if this <CODE>CommunicatorServer</CODE> is
	* <CODE>OFFLINE</CODE> or  <CODE>STOPPING</CODE>.
	*/
	@:overload public function stop() : Void;
	
	/**
	* Tests whether the <CODE>CommunicatorServer</CODE> is active.
	*
	* @return True if connector is <CODE>ONLINE</CODE>; false otherwise.
	*/
	@:overload public function isActive() : Bool;
	
	/**
	* <p>Waits until either the State attribute of this MBean equals the
	* specified <VAR>wantedState</VAR> parameter,
	* or the specified  <VAR>timeOut</VAR> has elapsed.
	* The method <CODE>waitState</CODE> returns with a boolean value
	* indicating whether the specified <VAR>wantedState</VAR> parameter
	* equals the value of this MBean's State attribute at the time the method
	* terminates.</p>
	*
	* <p>Two special cases for the <VAR>timeOut</VAR> parameter value are:</p>
	* <UL><LI> if <VAR>timeOut</VAR> is negative then <CODE>waitState</CODE>
	*     returns immediately (i.e. does not wait at all),</LI>
	* <LI> if <VAR>timeOut</VAR> equals zero then <CODE>waitState</CODE>
	*     waits untill the value of this MBean's State attribute
	*     is the same as the <VAR>wantedState</VAR> parameter (i.e. will wait
	*     indefinitely if this condition is never met).</LI></UL>
	*
	* @param wantedState The value of this MBean's State attribute to wait
	*        for. <VAR>wantedState</VAR> can be one of:
	* <ul>
	* <li><CODE>CommunicatorServer.OFFLINE</CODE>,</li>
	* <li><CODE>CommunicatorServer.ONLINE</CODE>,</li>
	* <li><CODE>CommunicatorServer.STARTING</CODE>,</li>
	* <li><CODE>CommunicatorServer.STOPPING</CODE>.</li>
	* </ul>
	* @param timeOut The maximum time to wait for, in milliseconds,
	*        if positive.
	* Infinite time out if 0, or no waiting at all if negative.
	*
	* @return true if the value of this MBean's State attribute is the
	*      same as the <VAR>wantedState</VAR> parameter; false otherwise.
	*/
	@:overload public function waitState(wantedState : Int, timeOut : haxe.Int64) : Bool;
	
	/**
	* Gets the state of this <CODE>CommunicatorServer</CODE> as an integer.
	*
	* @return <CODE>ONLINE</CODE>, <CODE>OFFLINE</CODE>,
	*         <CODE>STARTING</CODE> or <CODE>STOPPING</CODE>.
	*/
	@:overload public function getState() : Int;
	
	/**
	* Gets the state of this <CODE>CommunicatorServer</CODE> as a string.
	*
	* @return One of the strings "ONLINE", "OFFLINE", "STARTING" or
	*         "STOPPING".
	*/
	@:overload public function getStateString() : java.lang.String.String;
	
	/**
	* Gets the host name used by this <CODE>CommunicatorServer</CODE>.
	*
	* @return The host name used by this <CODE>CommunicatorServer</CODE>.
	*/
	@:overload public function getHost() : java.lang.String.String;
	
	/**
	* Gets the port number used by this <CODE>CommunicatorServer</CODE>.
	*
	* @return The port number used by this <CODE>CommunicatorServer</CODE>.
	*/
	@:overload public function getPort() : Int;
	
	/**
	* Sets the port number used by this <CODE>CommunicatorServer</CODE>.
	*
	* @param port The port number used by this
	*             <CODE>CommunicatorServer</CODE>.
	*
	* @exception java.lang.IllegalStateException This method has been invoked
	* while the communicator was ONLINE or STARTING.
	*/
	@:overload public function setPort(port : Int) : Void;
	
	/**
	* Gets the protocol being used by this <CODE>CommunicatorServer</CODE>.
	* @return The protocol as a string.
	*/
	@:overload @:abstract public function getProtocol() : java.lang.String.String;
	
	/**
	* The number of times the communicator server will attempt
	* to bind before giving up.
	**/
	@:overload private function getBindTries() : Int;
	
	/**
	* The delay, in ms, during which the communicator server will sleep before
	* attempting to bind again.
	**/
	@:overload private function getBindSleepTime() : haxe.Int64;
	
	/**
	* For SNMP Runtime internal use only.
	* <p>
	* The <CODE>run</CODE> method executed by this connector's main thread.
	*/
	@:overload public function run() : Void;
	
	/**
	*/
	@:overload @:abstract private function doError(e : java.lang.Exception.Exception) : Void;
	
	/**
	*/
	@:overload @:abstract private function doBind() : Void;
	
	/**
	* <CODE>doReceive()</CODE> should block until a client is available.
	* If this method throws an exception, <CODE>doProcess()</CODE> is not
	* called but <CODE>doUnbind()</CODE> is called then <CODE>run()</CODE>
	* stops.
	*/
	@:overload @:abstract private function doReceive() : Void;
	
	/**
	* <CODE>doProcess()</CODE> is called after <CODE>doReceive()</CODE>:
	* it should process the requests of the incoming client.
	* If it throws an exception, <CODE>doUnbind()</CODE> is called and
	* <CODE>run()</CODE> stops.
	*/
	@:overload @:abstract private function doProcess() : Void;
	
	/**
	* <CODE>doUnbind()</CODE> is called whenever the connector goes
	* <CODE>OFFLINE</CODE>, except if <CODE>doBind()</CODE> has thrown an
	* exception.
	*/
	@:overload @:abstract private function doUnbind() : Void;
	
	/**
	* Get the <code>MBeanServer</code> object to which incoming requests are
	* sent.  This is either the MBean server in which this connector is
	* registered, or an <code>MBeanServerForwarder</code> leading to that
	* server.
	*/
	@:overload @:synchronized public function getMBeanServer() : javax.management.MBeanServer.MBeanServer;
	
	/**
	* Set the <code>MBeanServer</code> object to which incoming
	* requests are sent.  This must be either the MBean server in
	* which this connector is registered, or an
	* <code>MBeanServerForwarder</code> leading to that server.  An
	* <code>MBeanServerForwarder</code> <code>mbsf</code> leads to an
	* MBean server <code>mbs</code> if
	* <code>mbsf.getMBeanServer()</code> is either <code>mbs</code>
	* or an <code>MBeanServerForwarder</code> leading to
	* <code>mbs</code>.
	*
	* @exception IllegalArgumentException if <code>newMBS</code> is neither
	* the MBean server in which this connector is registered nor an
	* <code>MBeanServerForwarder</code> leading to that server.
	*
	* @exception IllegalStateException This method has been invoked
	* while the communicator was ONLINE or STARTING.
	*/
	@:overload @:synchronized public function setMBeanServer(newMBS : javax.management.MBeanServer.MBeanServer) : Void;
	
	/**
	* Adds a listener for the notifications emitted by this
	* CommunicatorServer.
	* There is only one type of notifications sent by the CommunicatorServer:
	* they are <tt>{@link javax.management.AttributeChangeNotification}</tt>,
	* sent when the <tt>State</tt> attribute of this CommunicatorServer
	* changes.
	*
	* @param listener The listener object which will handle the emitted
	*        notifications.
	* @param filter The filter object. If filter is null, no filtering
	*        will be performed before handling notifications.
	* @param handback An object which will be sent back unchanged to the
	*        listener when a notification is emitted.
	*
	* @exception IllegalArgumentException Listener parameter is null.
	*/
	@:overload public function addNotificationListener(listener : javax.management.NotificationListener.NotificationListener, filter : javax.management.NotificationFilter.NotificationFilter, handback : java.lang.Object.Object) : Void;
	
	/**
	* Removes the specified listener from this CommunicatorServer.
	* Note that if the listener has been registered with different
	* handback objects or notification filters, all entries corresponding
	* to the listener will be removed.
	*
	* @param listener The listener object to be removed.
	*
	* @exception ListenerNotFoundException The listener is not registered.
	*/
	@:overload public function removeNotificationListener(listener : javax.management.NotificationListener.NotificationListener) : Void;
	
	/**
	* Returns an array of MBeanNotificationInfo objects describing
	* the notification types sent by this CommunicatorServer.
	* There is only one type of notifications sent by the CommunicatorServer:
	* it is <tt>{@link javax.management.AttributeChangeNotification}</tt>,
	* sent when the <tt>State</tt> attribute of this CommunicatorServer
	* changes.
	*/
	@:overload public function getNotificationInfo() : java.NativeArray<javax.management.MBeanNotificationInfo.MBeanNotificationInfo>;
	
	/**
	* Preregister method of connector.
	*
	*@param server The <CODE>MBeanServer</CODE> in which the MBean will
	*       be registered.
	*@param name The object name of the MBean.
	*
	*@return  The name of the MBean registered.
	*
	*@exception java.langException This exception should be caught by
	*           the <CODE>MBeanServer</CODE> and re-thrown
	*           as an <CODE>MBeanRegistrationException</CODE>.
	*/
	@:overload public function preRegister(server : javax.management.MBeanServer.MBeanServer, name : javax.management.ObjectName.ObjectName) : javax.management.ObjectName.ObjectName;
	
	/**
	*
	*@param registrationDone Indicates whether or not the MBean has been
	*       successfully registered in the <CODE>MBeanServer</CODE>.
	*       The value false means that the registration phase has failed.
	*/
	@:overload public function postRegister(registrationDone : java.lang.Boolean.Boolean) : Void;
	
	/**
	* Stop the connector.
	*
	* @exception java.langException This exception should be caught by
	*            the <CODE>MBeanServer</CODE> and re-thrown
	*            as an <CODE>MBeanRegistrationException</CODE>.
	*/
	@:overload public function preDeregister() : Void;
	
	/**
	* Do nothing.
	*/
	@:overload public function postDeregister() : Void;
	
	
}
