package javax.xml.ws.handler;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface MessageContext extends java.util.Map<String, Dynamic>
{
	/**
	* Sets the scope of a property.
	*
	* @param name Name of the property associated with the
	*             <code>MessageContext</code>
	* @param scope Desired scope of the property
	* @throws java.lang.IllegalArgumentException if an illegal
	*             property name is specified
	*/
	@:overload @:public public function setScope(name : String, scope : javax.xml.ws.handler.MessageContext.MessageContext_Scope) : Void;
	
	/**
	* Gets the scope of a property.
	*
	* @param name Name of the property
	* @return Scope of the property
	* @throws java.lang.IllegalArgumentException if a non-existant
	*             property name is specified
	*/
	@:overload @:public public function getScope(name : String) : javax.xml.ws.handler.MessageContext.MessageContext_Scope;
	
	
}
/**
* Property scope. Properties scoped as <code>APPLICATION</code> are
* visible to handlers,
* client applications and service endpoints; properties scoped as
* <code>HANDLER</code>
* are only normally visible to handlers.
*/
@:native('javax$xml$ws$handler$MessageContext$Scope') extern enum MessageContext_Scope
{
	APPLICATION;
	HANDLER;
	
}

