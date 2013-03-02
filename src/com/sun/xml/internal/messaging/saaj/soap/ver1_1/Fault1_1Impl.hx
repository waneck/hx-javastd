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
extern class Fault1_1Impl extends com.sun.xml.internal.messaging.saaj.soap.impl.FaultImpl
{
	private static var log(default, null) : java.util.logging.Logger;
	
	@:overload public function new(ownerDocument : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, prefix : String) : Void;
	
	@:overload private function getDetailName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload private function getFaultCodeName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload private function getFaultStringName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload private function getFaultActorName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload private function createDetail() : com.sun.xml.internal.messaging.saaj.soap.impl.DetailImpl;
	
	@:overload private function createSOAPFaultElement(localName : String) : com.sun.xml.internal.messaging.saaj.soap.impl.FaultElementImpl;
	
	@:overload private function checkIfStandardFaultCode(faultCode : String, uri : String) : Void;
	
	@:overload private function finallySetFaultCode(faultcode : String) : Void;
	
	@:overload public function getFaultCode() : String;
	
	@:overload public function getFaultCodeAsName() : javax.xml.soap.Name;
	
	@:overload public function getFaultCodeAsQName() : javax.xml.namespace.QName;
	
	@:overload public function setFaultString(faultString : String) : Void;
	
	@:overload public function getFaultString() : String;
	
	@:overload public function getFaultStringLocale() : java.util.Locale;
	
	@:overload public function setFaultString(faultString : String, locale : java.util.Locale) : Void;
	
	@:overload private function isStandardFaultElement(localName : String) : Bool;
	
	@:overload public function appendFaultSubcode(subcode : javax.xml.namespace.QName) : Void;
	
	@:overload public function removeAllFaultSubcodes() : Void;
	
	@:overload public function getFaultSubcodes() : java.util.Iterator<Dynamic>;
	
	@:overload public function getFaultReasonText(locale : java.util.Locale) : String;
	
	@:overload public function getFaultReasonTexts() : java.util.Iterator<Dynamic>;
	
	@:overload public function getFaultReasonLocales() : java.util.Iterator<Dynamic>;
	
	@:overload public function addFaultReasonText(text : String, locale : java.util.Locale) : Void;
	
	@:overload public function getFaultRole() : String;
	
	@:overload public function setFaultRole(uri : String) : Void;
	
	@:overload public function getFaultNode() : String;
	
	@:overload public function setFaultNode(uri : String) : Void;
	
	@:overload private function getDefaultFaultCode() : javax.xml.namespace.QName;
	
	@:overload public function addChildElement(element : javax.xml.soap.SOAPElement) : javax.xml.soap.SOAPElement;
	
	@:overload private function createSOAPFaultElement(qname : javax.xml.namespace.QName) : com.sun.xml.internal.messaging.saaj.soap.impl.FaultElementImpl;
	
	@:overload private function createSOAPFaultElement(qname : javax.xml.soap.Name) : com.sun.xml.internal.messaging.saaj.soap.impl.FaultElementImpl;
	
	@:overload public function setFaultCode(faultCode : String, prefix : String, uri : String) : Void;
	
	@:overload public function setFaultActor(faultActor : String) : Void;
	
	
}
