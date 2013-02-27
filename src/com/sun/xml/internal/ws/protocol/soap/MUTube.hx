package com.sun.xml.internal.ws.protocol.soap;
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
@:internal extern class MUTube extends com.sun.xml.internal.ws.api.pipe.helper.AbstractFilterTubeImpl
{
	private static var logger(default, null) : java.util.logging.Logger;
	
	private var soapVersion(default, null) : com.sun.xml.internal.ws.api.SOAPVersion;
	
	private var binding : com.sun.xml.internal.ws.binding.SOAPBindingImpl;
	
	@:overload private function new(binding : com.sun.xml.internal.ws.api.WSBinding, next : com.sun.xml.internal.ws.api.pipe.Tube) : Void;
	
	@:overload private function new(that : MUTube, cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : Void;
	
	/**
	* @param headers HeaderList that needs MU processing
	* @param roles        Roles configured on the Binding. Required Roles supposed to be assumbed a by a
	*                     SOAP Binding implementation are added.
	* @param handlerKnownHeaders Set of headers that the handlerchain associated with the binding understands
	* @return returns the headers that have mustUnderstand attribute and are not understood
	*         by the binding.
	*/
	@:overload @:final public function getMisUnderstoodHeaders(headers : com.sun.xml.internal.ws.api.message.HeaderList, roles : java.util.Set<String>, handlerKnownHeaders : java.util.Set<javax.xml.namespace.QName>) : java.util.Set<javax.xml.namespace.QName>;
	
	
}
