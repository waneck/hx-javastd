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
	@:protected @:static @:final private static var log(default, null) : java.util.logging.Logger;
	
	@:overload @:public public function new(ownerDocument : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl, prefix : String) : Void;
	
	@:overload @:protected override private function getDetailName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload @:protected override private function getFaultCodeName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload @:protected override private function getFaultStringName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload @:protected override private function getFaultActorName() : com.sun.xml.internal.messaging.saaj.soap.name.NameImpl;
	
	@:overload @:protected override private function createDetail() : com.sun.xml.internal.messaging.saaj.soap.impl.DetailImpl;
	
	@:overload @:protected override private function createSOAPFaultElement(localName : String) : com.sun.xml.internal.messaging.saaj.soap.impl.FaultElementImpl;
	
	@:overload @:protected override private function checkIfStandardFaultCode(faultCode : String, uri : String) : Void;
	
	@:overload @:protected override private function finallySetFaultCode(faultcode : String) : Void;
	
	@:overload @:public override public function getFaultCode() : String;
	
	@:overload @:public override public function getFaultCodeAsName() : javax.xml.soap.Name;
	
	@:overload @:public override public function getFaultCodeAsQName() : javax.xml.namespace.QName;
	
	@:overload @:public override public function setFaultString(faultString : String) : Void;
	
	@:overload @:public override public function getFaultString() : String;
	
	@:overload @:public override public function getFaultStringLocale() : java.util.Locale;
	
	@:overload @:public override public function setFaultString(faultString : String, locale : java.util.Locale) : Void;
	
	@:overload @:protected override private function isStandardFaultElement(localName : String) : Bool;
	
	@:overload @:public override public function appendFaultSubcode(subcode : javax.xml.namespace.QName) : Void;
	
	@:overload @:public override public function removeAllFaultSubcodes() : Void;
	
	@:overload @:public override public function getFaultSubcodes() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function getFaultReasonText(locale : java.util.Locale) : String;
	
	@:overload @:public override public function getFaultReasonTexts() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function getFaultReasonLocales() : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function addFaultReasonText(text : String, locale : java.util.Locale) : Void;
	
	@:overload @:public override public function getFaultRole() : String;
	
	@:overload @:public override public function setFaultRole(uri : String) : Void;
	
	@:overload @:public override public function getFaultNode() : String;
	
	@:overload @:public override public function setFaultNode(uri : String) : Void;
	
	@:overload @:protected override private function getDefaultFaultCode() : javax.xml.namespace.QName;
	
	@:overload @:public override public function addChildElement(element : javax.xml.soap.SOAPElement) : javax.xml.soap.SOAPElement;
	
	@:overload @:protected override private function createSOAPFaultElement(qname : javax.xml.namespace.QName) : com.sun.xml.internal.messaging.saaj.soap.impl.FaultElementImpl;
	
	@:overload @:protected override private function createSOAPFaultElement(qname : javax.xml.soap.Name) : com.sun.xml.internal.messaging.saaj.soap.impl.FaultElementImpl;
	
	@:overload @:public override public function setFaultCode(faultCode : String, prefix : String, uri : String) : Void;
	
	@:overload @:public override public function setFaultActor(faultActor : String) : Void;
	
	
}
