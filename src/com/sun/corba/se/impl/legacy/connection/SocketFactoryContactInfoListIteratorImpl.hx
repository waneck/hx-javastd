package com.sun.corba.se.impl.legacy.connection;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class SocketFactoryContactInfoListIteratorImpl extends com.sun.corba.se.impl.transport.CorbaContactInfoListIteratorImpl
{
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, corbaContactInfoList : com.sun.corba.se.spi.transport.CorbaContactInfoList) : Void;
	
	@:overload @:public override public function hasNext() : Bool;
	
	@:overload @:public override public function next() : Dynamic;
	
	@:overload @:public override public function reportException(contactInfo : com.sun.corba.se.pept.transport.ContactInfo, ex : java.lang.RuntimeException) : Bool;
	
	
}
