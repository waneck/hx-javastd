package com.sun.xml.internal.ws.policy.subject;
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
extern class WsdlBindingSubject
{
	@:overload @:public @:static public static function createBindingSubject(bindingName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.policy.subject.WsdlBindingSubject;
	
	@:overload @:public @:static public static function createBindingOperationSubject(bindingName : javax.xml.namespace.QName, operationName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.policy.subject.WsdlBindingSubject;
	
	@:overload @:public @:static public static function createBindingMessageSubject(bindingName : javax.xml.namespace.QName, operationName : javax.xml.namespace.QName, messageName : javax.xml.namespace.QName, messageType : com.sun.xml.internal.ws.policy.subject.WsdlBindingSubject.WsdlBindingSubject_WsdlMessageType) : com.sun.xml.internal.ws.policy.subject.WsdlBindingSubject;
	
	@:overload @:public public function getName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getMessageType() : com.sun.xml.internal.ws.policy.subject.WsdlBindingSubject.WsdlBindingSubject_WsdlMessageType;
	
	@:overload @:public public function getParent() : com.sun.xml.internal.ws.policy.subject.WsdlBindingSubject;
	
	@:overload @:public public function isBindingSubject() : Bool;
	
	@:overload @:public public function isBindingOperationSubject() : Bool;
	
	@:overload @:public public function isBindingMessageSubject() : Bool;
	
	@:overload @:public public function equals(that : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* For message subjects, this needs to be set to one of the values INPUT, OUTPUT
* or FAULT. Any other subject has the message type NO_MESSAGE.
*/
@:native('com$sun$xml$internal$ws$policy$subject$WsdlBindingSubject$WsdlMessageType') extern enum WsdlBindingSubject_WsdlMessageType
{
	NO_MESSAGE;
	INPUT;
	OUTPUT;
	FAULT;
	
}

/**
* Identifies the scope to which this subject belongs. See WS-PolicyAttachment
* for an explanation on WSDL scopes.
*
* The SERVICE scope is not actually used and only listed here for completeness
* sake.
*/
@:native('com$sun$xml$internal$ws$policy$subject$WsdlBindingSubject$WsdlNameScope') extern enum WsdlBindingSubject_WsdlNameScope
{
	SERVICE;
	ENDPOINT;
	OPERATION;
	MESSAGE;
	
}

