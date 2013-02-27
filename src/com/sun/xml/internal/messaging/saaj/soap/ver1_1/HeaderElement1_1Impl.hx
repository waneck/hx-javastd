package com.sun.xml.internal.messaging.saaj.soap.ver1_1;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
*
* @author SAAJ RI Development Team
*/
extern class HeaderElement1_1Impl extends com.sun.xml.internal.messaging.saaj.soap.impl.HeaderElementImpl
{
	private static var log(default, null) : java.util.logging.Logger;
	
	@:overload public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, qname : javax.xml.soap.Name) : Void;
	
	@:overload public function new(ownerDoc : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, qname : javax.xml.namespace.QName) : Void;
	
	@:overload override public function setElementQName(newName : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	@:overload override private function getActorAttributeName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload override private function getRoleAttributeName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload override private function getMustunderstandAttributeName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload override private function getMustunderstandLiteralValue(mustUnderstand : Bool) : String;
	
	@:overload override private function getMustunderstandAttributeValue(mu : String) : Bool;
	
	@:overload override private function getRelayAttributeName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload override private function getRelayLiteralValue(relayAttr : Bool) : String;
	
	@:overload override private function getRelayAttributeValue(mu : String) : Bool;
	
	@:overload override private function getActorOrRole() : String;
	
	
}
