package com.sun.jndi.toolkit.corba;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
//// Needed for RMI/IIOP
extern class CorbaUtils
{
	/**
	* Returns the CORBA object reference associated with a Remote
	* object by using the javax.rmi.CORBA package.
	*<p>
	* Use reflection to avoid hard dependencies on javax.rmi.CORBA package.
	* This method effective does the following:
	*<blockquote><pre>
	* java.lang.Object stub;
	* try {
	*     stub = PortableRemoteObject.toStub(remoteObj);
	* } catch (Exception e) {
	*     throw new ConfigurationException("Object not exported or not found");
	* }
	* if (!(stub instanceof javax.rmi.CORBA.Stub)) {
	*     return null; // JRMP impl or JRMP stub
	* }
	* try {
	*     ((javax.rmi.CORBA.Stub)stub).connect(orb);  // try to connect IIOP stub
	* } catch (RemoteException e) {
	*     // ignore 'already connected' error
	* }
	* return (javax.rmi.CORBA.Stub)stub;
	*
	* @param remoteObj The non-null remote object for
	* @param orb       The non-null ORB to connect the remote object to
	* @return The CORBA Object for remoteObj; null if <tt>remoteObj</tt>
	*                 is a JRMP implementation or JRMP stub.
	* @exception ClassNotFoundException The RMI-IIOP package is not available
	* @exception ConfigurationException The CORBA Object cannot be obtained
	*         because of configuration problems.
	*/
	@:overload public static function remoteToCorba(remoteObj : java.rmi.Remote, orb : org.omg.CORBA.ORB) : org.omg.CORBA.Object;
	
	/**
	* Get ORB using given server and port number, and properties from environment.
	*
	* @param server Possibly null server; if null means use default;
	*               For applet, it is the applet host; for app, it is localhost.
	* @param port   Port number, -1 means default port
	* @param env    Possibly null environment. Contains environment properties.
	*               Could contain ORB itself; or applet used for initializing ORB.
	*               Use all String properties from env for initializing ORB
	* @return A non-null ORB.
	*/
	@:overload public static function getOrb(server : String, port : Int, env : java.util.Hashtable<Dynamic, Dynamic>) : org.omg.CORBA.ORB;
	
	
}
