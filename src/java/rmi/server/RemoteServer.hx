package java.rmi.server;
/*
* Copyright (c) 1996, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class RemoteServer extends java.rmi.server.RemoteObject
{
	/**
	* Constructs a <code>RemoteServer</code>.
	* @since JDK1.1
	*/
	@:require(java1) @:overload private function new() : Void;
	
	/**
	* Constructs a <code>RemoteServer</code> with the given reference type.
	*
	* @param ref the remote reference
	* @since JDK1.1
	*/
	@:require(java1) @:overload private function new(ref : java.rmi.server.RemoteRef) : Void;
	
	/**
	* Returns a string representation of the client host for the
	* remote method invocation being processed in the current thread.
	*
	* @return  a string representation of the client host
	*
	* @throws  ServerNotActiveException if no remote method invocation
	* is being processed in the current thread
	*
	* @since   JDK1.1
	*/
	@:require(java1) @:overload public static function getClientHost() : String;
	
	/**
	* Log RMI calls to the output stream <code>out</code>. If
	* <code>out</code> is <code>null</code>, call logging is turned off.
	*
	* <p>If there is a security manager, its
	* <code>checkPermission</code> method will be invoked with a
	* <code>java.util.logging.LoggingPermission("control")</code>
	* permission; this could result in a <code>SecurityException</code>.
	*
	* @param   out the output stream to which RMI calls should be logged
	* @throws  SecurityException  if there is a security manager and
	*          the invocation of its <code>checkPermission</code> method
	*          fails
	* @see #getLog
	* @since JDK1.1
	*/
	@:require(java1) @:overload public static function setLog(out : java.io.OutputStream) : Void;
	
	/**
	* Returns stream for the RMI call log.
	* @return the call log
	* @see #setLog
	* @since JDK1.1
	*/
	@:require(java1) @:overload public static function getLog() : java.io.PrintStream;
	
	
}
