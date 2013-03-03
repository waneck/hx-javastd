package com.sun.corba.se.pept.protocol;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface ClientRequestDispatcher
{
	/**
	* At the beginning of a request the presentation block uses this
	* to obtain an
	* {@link com.sun.corba.se.pept.encoding.OutputObject OutputObject}
	* to set data to be sent on a message.
	*
	* @param self -
	* @param methodName - the remote method name
	* @param isOneWay - <code>true</code> if the message is asynchronous
	* @param contactInfo - the
	* {@link com.sun.corba.se.pept.transport.ContactInfo ContactInfo}
	* which which created/chose this <code>ClientRequestDispatcher</code>
	*
	* @return
	* {@link com.sun.corba.se.pept.encoding.OutputObject OutputObject}
	*/
	@:overload @:public public function beginRequest(self : Dynamic, methodName : String, isOneWay : Bool, contactInfo : com.sun.corba.se.pept.transport.ContactInfo) : com.sun.corba.se.pept.encoding.OutputObject;
	
	/**
	* After the presentation block has set data on the
	* {@link com.sun.corba.se.pept.encoding.OutputObject OutputObject}
	* it signals the PEPt runtime to send the encoded data by calling this
	* method.
	*
	* @param self -
	* @param outputObject
	*
	* @return
	* {@link com.sun.corba.se.pept.encoding.InputObject InputObject}
	* if the message is synchronous.
	*
	* @throws
	* {@link org.omg.CORBA.portable.ApplicationException ApplicationException}
	* if the remote side raises an exception declared in the remote interface.
	*
	* @throws
	* {@link org.omg.CORBA.portable.RemarshalException RemarshalException}
	* if the PEPt runtime would like the presentation block to start over.
	*/
	@:overload @:public public function marshalingComplete(self : Dynamic, outputObject : com.sun.corba.se.pept.encoding.OutputObject) : com.sun.corba.se.pept.encoding.InputObject;
	
	/**
	* After the presentation block completes a request it signals
	* the PEPt runtime by calling this method.
	*
	* This method may release resources.  In some cases it may cause
	* control or error messages to be sent.
	*
	* @param broker -
	* @param inputObject -
	*/
	@:overload @:public public function endRequest(broker : com.sun.corba.se.pept.broker.Broker, self : Dynamic, inputObject : com.sun.corba.se.pept.encoding.InputObject) : Void;
	
	
}
