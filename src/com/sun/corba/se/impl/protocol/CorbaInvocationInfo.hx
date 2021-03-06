package com.sun.corba.se.impl.protocol;
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
extern class CorbaInvocationInfo implements com.sun.corba.se.pept.protocol.ClientInvocationInfo
{
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload @:public public function getContactInfoListIterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function setContactInfoListIterator(contactInfoListIterator : java.util.Iterator<Dynamic>) : Void;
	
	@:overload @:public public function isRetryInvocation() : Bool;
	
	@:overload @:public public function setIsRetryInvocation(isRetryInvocation : Bool) : Void;
	
	@:overload @:public public function getEntryCount() : Int;
	
	@:overload @:public public function incrementEntryCount() : Void;
	
	@:overload @:public public function decrementEntryCount() : Void;
	
	@:overload @:public public function setClientRequestDispatcher(clientRequestDispatcher : com.sun.corba.se.pept.protocol.ClientRequestDispatcher) : Void;
	
	@:overload @:public public function getClientRequestDispatcher() : com.sun.corba.se.pept.protocol.ClientRequestDispatcher;
	
	@:overload @:public public function setMessageMediator(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload @:public public function getMessageMediator() : com.sun.corba.se.pept.protocol.MessageMediator;
	
	
}
