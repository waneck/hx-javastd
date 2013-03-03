package com.sun.tools.internal.ws.wsdl.parser;
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
* @author Vivek Pandey
*/
extern class MetadataFinder extends com.sun.tools.internal.ws.wsdl.parser.DOMForest
{
	@:public public var isMexMetadata : Bool;
	
	@:overload @:public public function new(logic : com.sun.tools.internal.ws.wsdl.parser.InternalizationLogic, options : com.sun.tools.internal.ws.wscompile.WsimportOptions, errReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload @:public public function parseWSDL() : Void;
	
	/**
	* Gives the root wsdl document systemId. A root wsdl document is the one which has wsdl:service.
	* @return null if there is no root wsdl
	*/
	@:overload @:public public function getRootWSDL() : String;
	
	/**
	* Gives all the WSDL documents.
	*/
	@:overload @:public public function getRootWSDLs() : java.util.Set<String>;
	
	
}
@:native('com$sun$tools$internal$ws$wsdl$parser$MetadataFinder$WSEntityResolver') extern class MetadataFinder_WSEntityResolver implements org.xml.sax.EntityResolver
{
	@:overload @:public public function new(options : com.sun.tools.internal.ws.wscompile.WsimportOptions, errReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload @:public public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	
}
@:native('com$sun$tools$internal$ws$wsdl$parser$MetadataFinder$HttpClientVerifier') @:internal extern class MetadataFinder_HttpClientVerifier implements javax.net.ssl.HostnameVerifier
{
	@:overload @:public public function verify(s : String, sslSession : javax.net.ssl.SSLSession) : Bool;
	
	
}
