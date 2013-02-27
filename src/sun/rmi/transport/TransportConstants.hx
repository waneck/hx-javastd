package sun.rmi.transport;
/*
* Copyright (c) 1996, Oracle and/or its affiliates. All rights reserved.
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
extern class TransportConstants
{
	/** Transport magic number: "JRMI"*/
	public static var Magic(default, null) : Int;
	
	/** Transport version number */
	public static var Version(default, null) : java.StdTypes.Int16;
	
	/** Connection uses stream protocol */
	public static var StreamProtocol(default, null) : java.StdTypes.Int8;
	
	/** Protocol for single operation per connection; no ack required */
	public static var SingleOpProtocol(default, null) : java.StdTypes.Int8;
	
	/** Connection uses multiplex protocol */
	public static var MultiplexProtocol(default, null) : java.StdTypes.Int8;
	
	/** Ack for transport protocol */
	public static var ProtocolAck(default, null) : java.StdTypes.Int8;
	
	/** Negative ack for transport protocol (protocol not supported) */
	public static var ProtocolNack(default, null) : java.StdTypes.Int8;
	
	/** RMI call */
	public static var Call(default, null) : java.StdTypes.Int8;
	
	/** RMI return */
	public static var Return(default, null) : java.StdTypes.Int8;
	
	/** Ping operation */
	public static var Ping(default, null) : java.StdTypes.Int8;
	
	/** Acknowledgment for Ping operation */
	public static var PingAck(default, null) : java.StdTypes.Int8;
	
	/** Acknowledgment for distributed GC */
	public static var DGCAck(default, null) : java.StdTypes.Int8;
	
	/** Normal return (with or without return value) */
	public static var NormalReturn(default, null) : java.StdTypes.Int8;
	
	/** Exceptional return */
	public static var ExceptionalReturn(default, null) : java.StdTypes.Int8;
	
	
}
