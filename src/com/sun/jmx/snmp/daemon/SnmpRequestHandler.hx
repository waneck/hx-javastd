package com.sun.jmx.snmp.daemon;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
//// jmx imports
////
//// RI imports
////
//// SNMP runtime import
////
////import com.sun.jmx.snmp.IPAcl.IPAcl;
@:internal extern class SnmpRequestHandler extends com.sun.jmx.snmp.daemon.ClientHandler.ClientHandler implements SnmpDefinitions
{
	/**
	* Full constructor
	*/
	@:overload public function new(server : com.sun.jmx.snmp.daemon.SnmpAdaptorServer.SnmpAdaptorServer, id : Int, s : java.net.DatagramSocket.DatagramSocket, p : java.net.DatagramPacket.DatagramPacket, tree : com.sun.jmx.snmp.daemon.SnmpMibTree.SnmpMibTree, m : java.util.Vector.Vector<Dynamic>, a : java.lang.Object.Object, factory : com.sun.jmx.snmp.SnmpPduFactory.SnmpPduFactory, dataFactory : com.sun.jmx.snmp.agent.SnmpUserDataFactory.SnmpUserDataFactory, f : javax.management.MBeanServer.MBeanServer, n : javax.management.ObjectName.ObjectName) : Void;
	
	/**
	* Treat the request available in 'packet' and send the result
	* back to the client.
	* Note: we overwrite 'packet' with the response bytes.
	*/
	@:overload override public function doRun() : Void;
	
	@:overload override private function makeDebugTag() : java.lang.String.String;
	
	
}
