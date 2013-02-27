package javax.xml.ws.soap;
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
extern interface SOAPBinding extends javax.xml.ws.Binding
{
	/** Gets the roles played by the SOAP binding instance.
	*
	*  @return Set&lt;String> The set of roles played by the binding instance.
	**/
	@:overload public function getRoles() : java.util.Set<String>;
	
	/** Sets the roles played by the SOAP binding instance.
	*
	*  @param roles    The set of roles played by the binding instance.
	*  @throws WebServiceException On an error in the configuration of
	*                  the list of roles.
	**/
	@:overload public function setRoles(roles : java.util.Set<String>) : Void;
	
	/**
	* Returns <code>true</code> if the use of MTOM is enabled.
	*
	* @return <code>true</code> if and only if the use of MTOM is enabled.
	**/
	@:overload public function isMTOMEnabled() : Bool;
	
	/**
	* Enables or disables use of MTOM.
	*
	* @param flag   A <code>boolean</code> specifying whether the use of MTOM should
	*               be enabled or disabled.
	* @throws WebServiceException If the specified setting is not supported
	*                  by this binding instance.
	*
	**/
	@:overload public function setMTOMEnabled(flag : Bool) : Void;
	
	/**
	* Gets the SAAJ <code>SOAPFactory</code> instance used by this SOAP binding.
	*
	* @return SOAPFactory instance used by this SOAP binding.
	**/
	@:overload public function getSOAPFactory() : javax.xml.soap.SOAPFactory;
	
	/**
	* Gets the SAAJ <code>MessageFactory</code> instance used by this SOAP binding.
	*
	* @return MessageFactory instance used by this SOAP binding.
	**/
	@:overload public function getMessageFactory() : javax.xml.soap.MessageFactory;
	
	
}
