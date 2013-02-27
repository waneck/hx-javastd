package com.sun.tools.internal.ws.wscompile;
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
extern class WsimportOptions extends com.sun.tools.internal.ws.wscompile.Options
{
	/**
	* -wsdlLocation
	*/
	public var wsdlLocation : String;
	
	/**
	* Actually stores {@link com.sun.org.apache.xml.internal.resolver.tools.CatalogResolver}, but the field
	* type is made to {@link org.xml.sax.EntityResolver} so that XJC can be
	* used even if resolver.jar is not available in the classpath.
	*/
	public var entityResolver : org.xml.sax.EntityResolver;
	
	/**
	* The -p option that should control the default Java package that
	* will contain the generated code. Null if unspecified.
	*/
	public var defaultPackage : String;
	
	/**
	* The -clientjar option to package client artifacts as jar
	*/
	public var clientjar : String;
	
	/**
	* -XadditionalHeaders
	*/
	public var additionalHeaders : Bool;
	
	/**
	* Setting disableSSLHostVerification to true disables the SSL Hostname verification while fetching the wsdls.
	* -XdisableSSLHostVerification
	*/
	public var disableSSLHostnameVerification : Bool;
	
	/**
	* Authentication file
	*/
	public var authFile : java.io.File;
	
	@:overload public function getCodeModel() : com.sun.codemodel.internal.JCodeModel;
	
	@:overload public function getSchemaCompiler() : com.sun.tools.internal.xjc.api.SchemaCompiler;
	
	@:overload public function setCodeModel(codeModel : com.sun.codemodel.internal.JCodeModel) : Void;
	
	/**
	* This captures jars passed on the commandline and passes them to XJC and puts them in the classpath for compilation
	*/
	public var cmdlineJars : java.util.List<String>;
	
	/**
	* Parses arguments and fill fields of this object.
	*
	* @exception BadCommandLineException
	*      thrown when there's a problem in the command-line arguments
	*/
	@:overload @:final override public function parseArguments(args : java.NativeArray<String>) : Void;
	
	/** -Xno-addressing-databinding option to disable addressing namespace data binding. This is
	* experimental switch and will be working as a temporary workaround till
	* jaxb can provide a better way to selelctively disable compiling of an
	* schema component.
	* **/
	public var noAddressingBbinding : Bool;
	
	@:overload override public function parseArguments(args : java.NativeArray<String>, i : Int) : Int;
	
	@:overload public function validate() : Void;
	
	@:overload override private function addFile(arg : String) : Void;
	
	/**
	* There is supposed to be one handler chain per generated SEI.
	* TODO: There is possible bug, how to associate a @HandlerChain
	* with each port on the generated SEI. For now lets preserve the JAXWS 2.0 FCS
	* behaviour and generate only one @HandlerChain on the SEI
	*/
	@:overload public function getHandlerChainConfiguration() : org.w3c.dom.Element;
	
	@:overload public function addHandlerChainConfiguration(config : org.w3c.dom.Element) : Void;
	
	@:overload public function getWSDLs() : java.NativeArray<org.xml.sax.InputSource>;
	
	@:overload public function getSchemas() : java.NativeArray<org.xml.sax.InputSource>;
	
	@:overload public function getWSDLBindings() : java.NativeArray<org.xml.sax.InputSource>;
	
	@:overload public function getSchemaBindings() : java.NativeArray<org.xml.sax.InputSource>;
	
	@:overload public function addWSDL(source : java.io.File) : Void;
	
	@:overload public function addWSDL(is : org.xml.sax.InputSource) : Void;
	
	@:overload public function addSchema(source : java.io.File) : Void;
	
	@:overload public function addSchema(is : org.xml.sax.InputSource) : Void;
	
	/**
	* Recursively scan directories and add all XSD files in it.
	*/
	@:overload public function addGrammarRecursive(dir : java.io.File) : Void;
	
	/**
	* Adds a new input schema.
	*/
	@:overload public function addWSDLBindFile(is : org.xml.sax.InputSource) : Void;
	
	@:overload public function addSchemmaBindFile(is : org.xml.sax.InputSource) : Void;
	
	@:overload public function addBindings(name : String) : Void;
	
	/**
	* Exposing it as a public method to allow external tools such as NB to read from wsdl model and work on it.
	* TODO: WSDL model needs to be exposed - basically at tool time we need to use the runtimw wsdl model
	*
	* Binding files could be jaxws or jaxb. This method identifies jaxws and jaxb binding files and keeps them separately. jaxb binding files are given separately
	* to JAXB in {@link com.sun.tools.internal.ws.processor.modeler.wsdl.JAXBModelBuilder}
	*
	* @param receiver {@link ErrorReceiver}
	*/
	@:overload @:final public function parseBindings(receiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	
}
